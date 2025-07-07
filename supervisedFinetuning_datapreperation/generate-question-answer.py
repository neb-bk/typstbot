import os
import re
import json
import subprocess
from datetime import datetime
from google import genai
from google.genai import types

SYSTEMPROMPT = '''You are a highly specialized AI model designed to generate comprehensive and
diverse instruction-response pairs for supervised fine-tuning of language models.
Your primary task is to extract and create the maximum amount of unique and high quality training data from the provided Typst documentation, so be a bit creative.
Your Answer should be a JSON-Array in the following structure: { "instruction": , "answer": }'''                                                                 

QUERY = '''
-Generation of instructions and answers:
    Create pairs consisting of an instruction (a question or task) and an answer.
    The answer can contain both explanatory text and typst code.

- Maximum variety and coverage:
    - The goal is to generate as many different and unique pairs as possible. Use your creativity and the information contained in the document to create combinations that are not directly given.
    - In particular, cover especially the important sections and functions of the Typst documentation comprehensively
    - creativity in application: 
        use your creativity to request and answer these Typst functions in different contexts and scenarios
    - Correctness of Typst code: 
        any generated Typst code must be fully functional and syntactically correct based on the documentation provided. Do not invent typst code that does not exist or would not work.
    - Identify complete typst commands: 
        Each complete typst command or code block must be mandatorily enclosed with “typ```” at the beginning and “```” at the end.
    - Example Image:
        If you use a sample image, only use the following file path: “../image.png”
'''

CLIENT = genai.Client(api_key="AIzaSyB786nuLabX8twaye4LTK4me9VX2Gqf2Wc")
BASE_DIRECTORY = r"C:\Users\f2004\HiDrive\Sync_Duales_Studium\WHS\4\Chat\supervisedFinetuning_datapreperation"
DATA_DIRECTORY = os.path.join(BASE_DIRECTORY, "data")
OUTPUT_DIRECTORY = os.path.join(BASE_DIRECTORY, "out_" + str(datetime.now().strftime("%Y-%m-%d_%H-%M")))
CURR_DATA_DIRECTORY = ""
CURR_OUTPUT_DIRECTORY = ""
RESULT = []
MAX_FILE_COUNT = 100
MAX_TRIES_PER_FILE = 8
FILE_COUNT = 0

def callApiForQuestioAnswer(filename):
    filePath = os.path.join(CURR_DATA_DIRECTORY, filename)
    myfile = CLIENT.files.upload(file=filePath)

    response = CLIENT.models.generate_content(
        model= "gemini-2.5-flash",#"gemini-2.0flash-lite",
        config=types.GenerateContentConfig(
            system_instruction=SYSTEMPROMPT),
        contents=[QUERY, myfile]
    )

    return response

def extractTextBetween(text, start_pattern, end_pattern):
    regex = rf"{re.escape(start_pattern)}(.*?){re.escape(end_pattern)}"
    
    matches = re.findall(regex, text, re.DOTALL)
    
    if matches:
        return "\n".join(matches)
    else:
        return ""
    
def editAndCompilePairs(filename, response):
    print("    modifiziere die Response")
    directory_for_file = os.path.join(CURR_OUTPUT_DIRECTORY, "f-" + filename[0:filename.rindex('.')])
    os.mkdir(directory_for_file)
    for idx, element in enumerate(response):
        element['id'] = idx
        try:
            answer = element['answer']
            # llms sind dumm, deswegen muss hier noch mehr abgedeckt werden z.B.: typ```; ```; '; typ; ....
            # vllt macht es hier sinn die Daten dauerhaft zu speichern und zu beginn einen entsprechenden Ordner zu erstellen
            # die Daten sollten dann nach Datei und Fragenummer benannt werden
            image_path = os.path.relpath(os.path.join(BASE_DIRECTORY, "image.png"), directory_for_file).replace("\\", "/")
            element['code'] = extractTextBetween(answer, "```typ", "```").replace('\"', '"').replace("../image.png", image_path).replace("../tiger.jpg", image_path)
            full_filename = f"{idx}.typ"
            path = os.path.join(directory_for_file, full_filename)
            with open(path, 'w+', encoding='utf-8') as f:
                f.write(element['code'])

            os.chdir(directory_for_file)
            code_to_run = f"typst compile {full_filename} --root {BASE_DIRECTORY}"
            subprocess_result = subprocess.run(
                code_to_run,
                shell=True,
                capture_output=True,
                text=True,
                check=False
            )
            element['compiler'] = subprocess_result.stderr.strip()
            element['usable'] = subprocess_result.returncode == 0
        except:
            element['usable'] = False
            continue
            
    return response
   
def getPairsForFile(filename):
    global FILE_COUNT
    print(f"  generiere Instruktionen und Antworten für {filename}")
    for i in range(MAX_TRIES_PER_FILE):
        responseText = ""
        try:
            responseText = callApiForQuestioAnswer(filename).text
            # schneidet alles vor und nach den Eckingenklammern ab
            extracted_responseText = responseText[responseText.index("["):responseText.rindex("]")+1]
            parsedResponse = json.loads(extracted_responseText)
            parsedResponse = editAndCompilePairs(filename, parsedResponse)
            RESULT.extend(parsedResponse)
            FILE_COUNT += 1
            break
        except:
            print(f"    ---error für {filename}---")
            with open(os.path.join(OUTPUT_DIRECTORY, "err-" + filename[0:filename.rindex('.')] + ".txt"), 'w+', encoding='utf-8') as f:
                f.write(responseText)
        

def processData():
    global MAX_FILE_COUNT
    global DATA_DIRECTORY
    global CURR_DATA_DIRECTORY
    global CURR_OUTPUT_DIRECTORY

    for dirpath, dirnames, filenames in os.walk(DATA_DIRECTORY):
        # Ordner beginnend mit "-" ignorieren
        dirnames[:] = [d for d in dirnames if not d.startswith('-')]
        filenames[:] = [f for f in filenames if not f.startswith('-')]
        relative_path = os.path.relpath(dirpath, DATA_DIRECTORY)
        CURR_OUTPUT_DIRECTORY = os.path.join(OUTPUT_DIRECTORY, relative_path)
        os.makedirs(CURR_OUTPUT_DIRECTORY, exist_ok=True)
        CURR_DATA_DIRECTORY = dirpath
        if filenames:
            for filename in filenames:
                if MAX_FILE_COUNT < 1:
                    continue
                MAX_FILE_COUNT -= 1
                getPairsForFile(filename)

def countUsableResults():
    count = 0
    for entrie in RESULT:
        if entrie['usable']:
            count += 1
    return count

def timedeltaToMinutesSeconds(timedelta):
    total_seconds = timedelta.total_seconds()
    minutes = (total_seconds % 3600) // 60
    seconds = total_seconds % 60 // 1
    return str(int(minutes)) + ":" + str(int(seconds))

start_time = datetime.now()
os.mkdir(OUTPUT_DIRECTORY)
print(f"Generiere Anweisung-Antwort-Kombinationen, basierend auf maximal {MAX_FILE_COUNT} Dateien.")
processData()
anzahl_usable = countUsableResults()

time_needed = timedeltaToMinutesSeconds(datetime.now() - start_time)
print(f"Innerhalb von {time_needed}min wurden {len(RESULT)} Einträge aus {FILE_COUNT} Dateien generiert. Davon sind {anzahl_usable} nutzbar.")
path = os.path.join(OUTPUT_DIRECTORY, "result.json")
with open(path, 'w+', encoding='utf-8') as res:
    res.write(json.dumps(RESULT, indent=2))
print("done")

# TODO: passende fragen abspeichern
# TODO: Beispielbildpfad mit in die Systemprompt aufnehmen
# TODO: compileroutput
# TODO: komische zeichen im Co   de


#answer = '```typ\n@tiger shows a tiger. Tigers\nare animals.\n\n#figure(\n  image(\"../tiger.jpg\", width: 80%),\n  caption: [A tiger.],\n) <tiger>\n```'
#answer[answer.index("```typ")+6:answer.rindex("```")].replace("\n", " ").replace('\"', '"')

