from HVZConstants import *
import csv

def generateZombieKits():
    allZombiesKit = "zombie"
    allZombiesRemoveKitTags = f"{allZombiesKit}_kit_remove_tags"

    data = []
    with open('ZombieSpecial.csv') as f:
        data = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]

    for item in data:
        tagName = item[ZOMBIE_KIT_CSV_FILE_KIT_NAME].lower()
        kitFileName = f"get_{tagName}_kit"
        with open(f"{ZOMBIE_KIT_PATH}{tagName}.mcfunction", 'w') as outfile:
            if item[ZOMBIE_KIT_CSV_FILE_CHESTPLATE] != '':
                outfile.write("#Put Chestplate on player\n")
                outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.chest with {item[ZOMBIE_KIT_CSV_FILE_CHESTPLATE]}\n\n")

            for key in item.keys():
                if key.__contains__("Item") and item[key] != '':
                    outfile.write(f"#Give player a specific item\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give @s {item[key]} {item['Quantity'+key.split('Item')[1]]}\n\n")

        with open(f"{ZOMBIE_KIT_PATH}{kitFileName}.mcfunction", 'w') as outfile:
            outfile.write("#Give player all zombie kit items\n")
            outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_KIT_PATH}{allZombiesKit}\n\n")

            outfile.write("#Give player kit gear\n")
            outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_ZOMBIE_KIT_PATH}{tagName}\n\n")

    with open(f"{KIT_FILE_PATH}{allZombiesKit}.mcfunction", "w") as allZombieFile:
        allZombieFile.write("#Join Zombie Team\n")
        allZombieFile.write(f"{EXECUTE_AS_TARGET_COMMAND} team join HVZZombie @s\n\n")

        allZombieFile.write("#Clear player inventory\n")
        allZombieFile.write(f"{EXECUTE_AS_TARGET_COMMAND} clear\n\n")

        allZombieFile.write("#Clear player effects\n")
        allZombieFile.write(f"{EXECUTE_AS_TARGET_COMMAND} effect clear @s\n\n")

        allZombieFile.write("#Give player tracking compass\n")
        allZombieFile.write(f"{EXECUTE_AS_TARGET_COMMAND} function player_tracker:compass/track_player\n\n")

        allZombieFile.write("#Add 0 to score to make sure it exists\n")
        allZombieFile.write(f"{EXECUTE_AS_TARGET_COMMAND} scoreboard players add @s PKilledAsZombie 0\n\n")

        # for item in data:
        #     outfile.write("#Give player specific item\n")
        #     outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give @s {item['Item']} {item['Amount']}\n\n")


        data = []
        with open('ZombiesKitItems.csv') as f:
            data = [{k: str(v) for k, v in row.items()}
                    for row in csv.DictReader(f, skipinitialspace=True)]

        allZombieFile.write("#Execute correct file based on tag\n")

        with open(f"{KIT_FILE_PATH}{allZombiesRemoveKitTags}.mcfunction", "w") as kitTagRemoveFile:
            kitTagRemoveFile.write("#Remove normal zombie kit tags\n")

            for item in data:
                tagName = item[ZOMBIE_KIT_CSV_FILE_KIT_NAME].lower()
                kitTagRemoveFile.write(f"{EXECUTE_AS_TARGET_COMMAND} tag @s remove {tagName}\n")
                allZombieFile.write(f"execute as @s if entity @s[team={ZOMBIE_TEAM_NAME},scores={{PKilledAsZombie={item[ZOMBIE_KIT_CSV_FILE_KILLS_NEEDED]}}}] run function {HVZ_CALL_FUNCTION_ZOMBIE_KIT_PATH}{tagName}\n")


                kitFileName = f"get_{tagName}_kit"
                with open(f"{ZOMBIE_KIT_PATH}{tagName}.mcfunction", 'w') as outfile:
                    outfile.write("#Put Helmet on player\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.head with {item[ZOMBIE_KIT_CSV_FILE_HELMET]}\n\n")

                    outfile.write("#Put Chestplate on player\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.chest with {item[ZOMBIE_KIT_CSV_FILE_CHESTPLATE]}\n\n")

                    outfile.write("#Put Pants on player\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.legs with {item[ZOMBIE_KIT_CSV_FILE_PANTS]}\n\n")

                    outfile.write("#Put Boots on player\n")
                    outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} item replace entity @s armor.feet with {item[ZOMBIE_KIT_CSV_FILE_BOOTS]}\n\n")

                    for key in item.keys():
                        if key.__contains__("Item") and item[key] != '':
                            outfile.write(f"#Give player a specific item\n")
                            outfile.write(f"{EXECUTE_AS_TARGET_COMMAND} give @s {item[key]} 1\n\n")

                # with open(f"{ZOMBIE_KIT_PATH}{kitFileName}.mcfunction", 'w') as outfile:
                #     outfile.write("#Remove zombie kit tags from player\n")
                #     outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_KIT_PATH}{allZombiesRemoveKitTags}\n\n")
                #
                #     outfile.write("#Give tag for zombie kit to player\n")
                #     outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} tag @s add {tagName}\n\n")
                #
                #     outfile.write("#Give player all zombie kit items\n")
                #     outfile.write(f"{EXECUTE_AS_NEAREST_COMMAND} function {HVZ_CALL_FUNCTION_KIT_PATH}{allZombiesKit}\n\n")

generateZombieKits()