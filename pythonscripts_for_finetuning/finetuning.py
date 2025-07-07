import numpy as np
from datasets import load_dataset, DatasetDict
from mistral_inference.transformer import Transformer
from mistral_common.tokens.tokenizers.mistral import MistralTokenizer
from transformers import TrainingArguments, Trainer
import pandas as pd
import evaluate

def readDataset():
    raw_dataset = load_dataset("json", data_files="dataset.csv")
    split_dataset: DatasetDict = raw_dataset['train'].train_test_split(test_size=0.2, shuffle=True, seed=42)

    tokenizer = MistralTokenizer.v3()
    #tokenizer.pad_token = tokenizer.eos_token
    def tokenize_function(examples):
        return tokenizer(examples["text"], padding="max_length", truncation=True)

    tokenized_dataset = raw_dataset.map(tokenize_function, batched=True)

    mistral_model_path = "mistralai/Codestral-22B-v0.1"
    model = Transformer.from_folder(mistral_model_path)

    metric = evaluate.load("accuracy")

    def compute_metrics(eval_pred):
        logits, labels = eval_pred
        predictions = np.argmax(logits, axis=-1)
        return metric.compute(predictions=predictions, references=labels)

    training_args = TrainingArguments(
        output_dir="test_trainer",
        per_device_train_batch_size=1,
        per_device_eval_batch_size=1,
        gradient_accumulation_steps=4,
    )

    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=tokenized_dataset["train"],
        eval_dataset=tokenized_dataset["test"],
        compute_metric=compute_metrics,
    )

    trainer.train()

    trainer.evaluate()

if __name__ == '__main__':
    readDataset()