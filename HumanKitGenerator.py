from HVZConstants import *
import csv

def generateHumanKits():
    data = []
    with open('HumansKitItems.csv') as f:
        data = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]

    for item in data:
        curFileName = f"{item[HUMAN_KIT_CSV_FILE_KIT_NAME].lower()}.mcfunction"
        with open(f"{HUMAN_KIT_PATH}{curFileName}", 'w') as outfile:
            outfile.write("#Put Chestplate on player\n")
            outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.chest with {item[HUMAN_KIT_CSV_FILE_CHESTPLATE]}\n\n")

            non_item_keys = {HUMAN_KIT_CSV_FILE_CHESTPLATE, HUMAN_KIT_CSV_FILE_KIT_NAME}
            for key in item.keys():
                if key not in non_item_keys and item[key] != '':
                    outfile.write(f"#Give player a specific item\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give @s {item[key]} 1\n\n")

generateHumanKits()