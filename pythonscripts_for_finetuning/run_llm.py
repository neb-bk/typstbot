from transformers import AutoModelForCausalLM, AutoTokenizer
import torch

model_path = "C:/Users/f2004/PycharmProjects/PythonProject/text_generation_trainer/checkpoint-507"

tokenizer = AutoTokenizer.from_pretrained(model_path)
model = AutoModelForCausalLM.from_pretrained(model_path)
model.eval()

if torch.cuda.is_available():
    model = model.to("cuda")

EOS_TOKEN_STRING = tokenizer.eos_token
tokenizer.chat_template = (
    "{% for message in messages %}"
    "{% if message['role'] == 'user' %}"
    f"{{{{ '<|user|>\n' + message['content'] + '{EOS_TOKEN_STRING}' }}}}" # <-- Fixed line
    "{% elif message['role'] == 'system' %}"
    f"{{{{ '<|system|>\n' + message['content'] + '{EOS_TOKEN_STRING}' }}}}" # <-- Fixed line
    "{% elif message['role'] == 'assistant' %}"
    f"{{{{ '<|assistant|>\n' + message['content'] + '{EOS_TOKEN_STRING}' }}}}" # <-- Fixed line
    "{% endif %}"
    "{% endfor %}"
    "{% if add_generation_prompt %}"
    "{{ '<|assistant|>\n' }}" 
    "{% endif %}"
)

if tokenizer.pad_token is None:
    tokenizer.pad_token = tokenizer.eos_token # A common fallback if PAD is not defined

def generate_response(model, tokenizer, chat_history, max_new_tokens=500, temperature=0.7):
    input_text = tokenizer.apply_chat_template(chat_history, tokenize=False, add_generation_prompt=True)

    inputs = tokenizer(input_text, return_tensors="pt")

    if torch.cuda.is_available():
        inputs = {k: v.to("cuda") for k, v in inputs.items()}

    with torch.no_grad():
        outputs = model.generate(
            **inputs,
            max_new_tokens=max_new_tokens,
            do_sample=True,  # Enable sampling for more diverse responses
            temperature=temperature,
            pad_token_id=tokenizer.eos_token_id  # Important for generation to stop cleanly
        )

    response = tokenizer.decode(outputs[0][inputs["input_ids"].shape[-1]:], skip_special_tokens=True)
    return response

chat_history = [
    {"role": "system", "content": "You are a helpful AI assistant."},
]

print("Start chatting with your LLM! Type 'quit' to exit.")

while True:
    user_input = input("You: ")
    if user_input.lower() == 'quit':
        break

    chat_history.append({"role": "user", "content": user_input})

    llm_response = generate_response(model, tokenizer, chat_history)
    print(f"LLM: {llm_response}")

    chat_history.append({"role": "assistant", "content": llm_response})