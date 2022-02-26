from HVZConstants import *
import csv

def generateHumanKits():
    data = []
    with open('AllHumansItems.csv') as f:
        data = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]

    allHumansKit = "human"

    # execute as @p run clear
    # effect clear @p

    with open(f"{KIT_FILE_PATH}{allHumansKit}.mcfunction", "w") as outfile:
        outfile.write("#Join Human Team\n")
        outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} team join HVZHuman @s\n\n")

        outfile.write("#Clear player inventory\n")
        outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} clear\n\n")

        outfile.write("#Clear player effects\n")
        outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} effect clear @s\n\n")

        for item in data:
            outfile.write("#Give player specific item\n")
            outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give {item['Item']} {item['Amount']}\n\n")


    data = []
    with open('HumansKitItems.csv') as f:
        data = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]

    for item in data:
        tagName = item[HUMAN_KIT_CSV_FILE_KIT_NAME].lower()
        kitFileName = f"get_{tagName}_kit"
        with open(f"{HUMAN_KIT_PATH}{tagName}.mcfunction", 'w') as outfile:
            outfile.write("#Put Chestplate on player\n")
            outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.chest with {item[HUMAN_KIT_CSV_FILE_CHESTPLATE]}\n\n")

            non_item_keys = {HUMAN_KIT_CSV_FILE_CHESTPLATE, HUMAN_KIT_CSV_FILE_KIT_NAME}
            for key in item.keys():
                if key not in non_item_keys and item[key] != '':
                    outfile.write(f"#Give player a specific item\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give @s {item[key]} 1\n\n")

        with open(f"{HUMAN_KIT_PATH}{kitFileName}.mcfunction", 'w') as outfile:
            outfile.write("#Give player all human kit items\n")
            outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_KIT_PATH}{allHumansKit}\n\n")

            outfile.write("#Give player kit gear\n")
            outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_HUMAN_KIT_PATH}{tagName}\n\n")

generateHumanKits()