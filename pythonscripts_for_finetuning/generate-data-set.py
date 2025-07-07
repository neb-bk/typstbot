import json

# Assuming your original JSON data is in a file named 'original_data.json'
input_filename = r"D:\Dokumente\HiDrive\Sync_Duales_Studium\WHS\4\Chat\supervisedFinetuning_datapreperation\out_2025-06-25_15-49\result.json"
output_filename = r"D:\Dokumente\HiDrive\Sync_Duales_Studium\WHS\4\Chat\supervisedFinetuning_datapreperation\out_2025-06-25_15-49\dataset.json"

try:
    with open(input_filename, 'r', encoding='utf-8') as f:
        data = json.load(f)

    with open(output_filename, 'w+', encoding='utf-8') as f:
        for item in data:
            if item.get('usable', False):
                new_item = {
                    "input": item.get('instruction', ""),
                    "output": item.get('answer', "") # Changed "answer" to "output" as requested
                }
                # json.dumps() handles all necessary escaping (like newlines, quotes)
                f.write(json.dumps(new_item) + ',\n')

    print(f"Successfully converted '{input_filename}' to '{output_filename}'.")

except FileNotFoundError:
    print(f"Error: The file '{input_filename}' was not found.")
except json.JSONDecodeError:
    print(f"Error: Could not decode JSON from '{input_filename}'. Please check the file's format.")
except Exception as e:
    print(f"An unexpected error occurred: {e}")