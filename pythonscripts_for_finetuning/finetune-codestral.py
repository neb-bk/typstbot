from datasets import load_dataset
from transformers import AutoTokenizer, AutoModelForCausalLM # Use Auto instead of GPT2 specific
from transformers import TrainingArguments, Trainer, BitsAndBytesConfig # New for QLoRA
from transformers import DataCollatorForLanguageModeling
import evaluate
import numpy as np
import torch # For device placement and data types

# --- PEFT/QLoRA Imports ---
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training # New for PEFT

# 1. Load your dataset
raw_dataset = load_dataset("json", data_files="dataset.csv")
split_dataset = raw_dataset['train'].train_test_split(test_size=0.2, shuffle=True, seed=42)

# 2. Initialize Codestral Tokenizer
# IMPORTANT: Use the correct model name for Codestral
MODEL_NAME = "mistralai/Codestral-22B-v0.1" # Or the latest official Codestral model ID

tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)

# Codestral, like Llama models, usually has <s> for BOS and </s> for EOS.
# It might not have a dedicated padding token, so setting it to EOS is common for CausalLM.
if tokenizer.pad_token is None:
    tokenizer.pad_token = tokenizer.eos_token # Or tokenizer.add_special_tokens({'pad_token': '[PAD]'}) and resize embeddings
    # If adding a new pad token, you must resize model embeddings later:
    # model.resize_token_embeddings(len(tokenizer))


def preprocess_function(examples):
    # Ensure your prompt format aligns perfectly with Codestral's instruction tuning
    # and what your dataset expects.
    # For general fine-tuning, "Input: ... Output: ..." is fine.
    # If using an instruct version of Codestral, you might need specific chat templates.
    combined_texts = [f"Input: {inp} Output: {out}{tokenizer.eos_token}"
                      for inp, out in zip(examples["input"], examples["output"])]

    # `return tokenizer(combined_texts, truncation=True)` is generally good.
    # For large models, it's often better to let DataCollatorForLanguageModeling handle padding.
    # max_length could be set if you have specific constraints.
    return tokenizer(combined_texts, truncation=True)

tokenized_datasets = split_dataset.map(preprocess_function, batched=True)

# Select smaller subsets for quicker testing
small_train_dataset = tokenized_datasets["train"].shuffle(seed=42)#.select(range(150))
small_eval_dataset = tokenized_datasets["test"].shuffle(seed=42)#.select(range(50))


# 3. Initialize the Model (Codestral) with Quantization (QLoRA)
# This is crucial for large models like Codestral
bnb_config = BitsAndBytesConfig(
    load_in_4bit=True,              # Load model in 4-bit quantization
    bnb_4bit_quant_type="nf4",      # NormalFloat 4-bit quantization
    bnb_4bit_use_double_quant=True, # Double quantization for more memory savings
    bnb_4bit_compute_dtype=torch.bfloat16, # Or torch.float16 if bfloat16 is not supported by your GPU
)

model = AutoModelForCausalLM.from_pretrained(
    MODEL_NAME,
    quantization_config=bnb_config, # Apply quantization config
    device_map="auto",              # Automatically distribute model across available GPUs
    torch_dtype=torch.bfloat16      # Or torch.float16
)

# Prepare model for K-bit training (essential for QLoRA)
model.gradient_checkpointing_enable() # Helps save memory during training
model = prepare_model_for_kbit_training(model)

# Configure LoRA
lora_config = LoraConfig(
    r=16, # LoRA attention dimension
    lora_alpha=32, # Alpha parameter for LoRA scaling
    target_modules=["q_proj", "k_proj", "v_proj", "o_proj"], # Target common attention layers
    lora_dropout=0.05, # Dropout probability for LoRA layers
    bias="none", # Do not train bias terms
    task_type="CAUSAL_LM", # This is for causal language modeling
)

# Add LoRA adapters to the model
model = get_peft_model(model, lora_config)

# Print trainable parameters to verify PEFT is working
model.print_trainable_parameters()
# Output should show a very small percentage of trainable parameters


# 4. Data Collator for Language Modeling (remains the same)
data_collator = DataCollatorForLanguageModeling(
    tokenizer=tokenizer, mlm=False
)

# 5. Compute Metrics (remains the same, focusing on eval_loss)
# Accuracy is NOT suitable for text generation.
def compute_metrics(eval_pred):
   # The Trainer automatically calculates eval_loss
   return {"eval_loss": eval_pred.metrics["eval_loss"]}


# 6. Training Arguments (remains largely the same, ensuring consistency)
training_args = TrainingArguments(
    output_dir="codestral_finetune_trainer", # Change output directory name
    eval_strategy="epoch",
    save_strategy="epoch",
    per_device_train_batch_size=1,
    per_device_eval_batch_size=1,
    gradient_accumulation_steps=4,
    logging_steps=50,
    learning_rate=2e-5,
    num_train_epochs=3,
    warmup_steps=500,
    weight_decay=0.01,
    fp16=True, # Enable mixed precision if your GPU supports it (recommended for speed)
    # bf16=True, # Use bfloat16 if your GPU (e.g., A100, H100, RTX 30/40 series) supports it, often better for LLMs
    load_best_model_at_end=True,
    metric_for_best_model="eval_loss",
    greater_is_better=False,
    push_to_hub=False, # Set to True if you want to push to Hugging Face Hub
    report_to="tensorboard", # Or "wandb", "neptune" etc. for better logging
)


# 7. Initialize Trainer
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=small_train_dataset,
    eval_dataset=small_eval_dataset,
    data_collator=data_collator,
    compute_metrics=compute_metrics, # Keep this if you want eval_loss reported by compute_metrics
)

# 8. Train the model
trainer_stats = trainer.train()

# 9. Save the fine-tuned model (PEFT adapters)
# The PEFT model saves only the adapters. To use it for inference, you'd typically
# load the base model and then load the adapters on top.
trainer.model.save_pretrained("my_codestral_adapters")

# To save the merged model (base + adapters) for inference or GGUF conversion:
# If you want to merge the LoRA adapters back into the base model and save the full model:
# First, ensure you have enough RAM/VRAM to load the full non-quantized model.
# from peft import PeftModel
# base_model = AutoModelForCausalLM.from_pretrained(
#     MODEL_NAME,
#     torch_dtype=torch.float16, # Or bfloat16
# )
# model = PeftModel.from_pretrained(base_model, "my_codestral_adapters")
# merged_model = model.merge_and_unload()
# merged_model.save_pretrained("my_finetuned_codestral_merged_hf_format")
# tokenizer.save_pretrained("my_finetuned_codestral_merged_hf_format")


# 10. GGUF Conversion (Crucial step for Ollama)
# As noted before, model.save_pretrained_gguf is NOT a standard Hugging Face method.
# You will need to use llama.cpp's conversion script.
#
# So, REMOVE THIS LINE:
# model.save_pretrained_gguf("gguf_model", tokenizer, quantization_method="q4_k_m")
#
# Instead, after training and optionally merging adapters (see above comments),
# you would follow the steps from my previous answer:
# 1. Save your fine-tuned Hugging Face model (or the merged model)
#    trainer.model.save_pretrained("my_finetuned_codestral_adapters") # For adapters only
#    tokenizer.save_pretrained("my_finetuned_codestral_adapters")
#    # OR if you merged:
#    # merged_model.save_pretrained("my_finetuned_codestral_merged_hf_format")
#    # tokenizer.save_pretrained("my_finetuned_codestral_merged_hf_format")
#
# 2. Use the llama.cpp/convert.py script:
#    python /path/to/llama.cpp/convert.py "my_finetuned_codestral_merged_hf_format" --outfile "my_finetuned_codestral.gguf" --outtype f16
#    (You might need to adjust the source path to "my_finetuned_codestral_adapters" if you're directly converting adapters - llama.cpp is evolving on this)
#
# 3. Quantize the .gguf file (optional but recommended for smaller size):
#    /path/to/llama.cpp/quantize "my_finetuned_codestral.gguf" "my_finetuned_codestral_q4km.gguf" q4_K_M
#
# 4. Create your Modelfile for Ollama.
# 5. `ollama create my-finetuned-codestral -f Modelfile`
# 6. `ollama run my-finetuned-codestral`

print("\n--- Fine-tuning script for Codestral prepared. ---")
print("Remember to install `bitsandbytes` and `peft` and adjust MODEL_NAME.")
print("The GGUF conversion will be a separate step using llama.cpp after saving the Hugging Face model.")