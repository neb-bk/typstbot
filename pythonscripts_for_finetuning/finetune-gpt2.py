from datasets import load_dataset
from transformers import GPT2Tokenizer, GPT2LMHeadModel
from transformers import TrainingArguments, Trainer
from transformers import DataCollatorWithPadding
from transformers import DataCollatorForLanguageModeling
import evaluate
import numpy as np

raw_dataset = load_dataset("json", data_files="dataset.csv")
split_dataset = raw_dataset['train'].train_test_split(test_size=0.2, shuffle=True, seed=42)

tokenizer = GPT2Tokenizer.from_pretrained("gpt2")
tokenizer.pad_token = tokenizer.eos_token
def preprocess_function(examples):
    combined_texts = [f"Input: {inp} Output: {out}{tokenizer.eos_token}"
                      for inp, out in zip(examples["input"], examples["output"])]

    return tokenizer(combined_texts, truncation=True)

tokenized_datasets = split_dataset.map(preprocess_function, batched=True)
small_train_dataset = tokenized_datasets["train"].shuffle(seed=42).select(range(150))
small_eval_dataset = tokenized_datasets["test"].shuffle(seed=42).select(range(50))

model = GPT2LMHeadModel.from_pretrained("gpt2")

data_collator = DataCollatorForLanguageModeling(
    tokenizer=tokenizer, mlm=False # mlm=False for Causal Language Modeling (GPT-like)
)

metric = evaluate.load("accuracy")

def compute_metrics(eval_pred):
   logits = eval_pred.predictions
   labels = eval_pred.label_ids
   return {"eval_loss": eval_pred.metrics["eval_loss"]}

# 8. Training Arguments
training_args = TrainingArguments(
    output_dir="text_generation_trainer",
    eval_strategy="epoch",  # Evaluate at the end of each epoch
    save_strategy="epoch",
    per_device_train_batch_size=1,
    per_device_eval_batch_size=1,
    gradient_accumulation_steps=4, # Simulate a batch size of 4 (1*4)
    logging_steps=50, # Log training metrics every 50 steps
    save_steps=500, # Save checkpoint every 500 steps
    learning_rate=2e-5, # Common learning rate for fine-tuning
    num_train_epochs=3, # Number of training epochs
    warmup_steps=500, # Linear warmup for learning rate
    weight_decay=0.01, # Regularization
    # Set to true for mixed precision training if your GPU supports it
    # fp16=True,
    load_best_model_at_end=True, # Load the best model based on evaluation metric
    metric_for_best_model="eval_loss", # Metric to determine the best model
    greater_is_better=False, # For loss, lower is better
)

# 9. Initialize Trainer
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=small_train_dataset,
    eval_dataset=small_eval_dataset,
    data_collator=data_collator, # Use the Language Modeling data collator
    # For language modeling, compute_metrics is less critical as eval_loss is the primary metric
    # However, you can add a custom one if you want to report perplexity directly.
    # compute_metrics=compute_perplexity_metrics, # Optional: if you want perplexity in reports
)

# 10. Train the model
trainer_stats = trainer.train()

model.save_pretrained_gguf("gguf_model", tokenizer, quantization_method="q4_k_m")