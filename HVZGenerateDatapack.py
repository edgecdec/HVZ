import csv
from HVZConstants import *
from HVZItemTemplates.PrimaryWeapon import createPrimaryWeaponString
from HVZItemTemplates.SecondaryWeapon import createSecondaryWeaponString
from HVZItemTemplates.Ammo import createAmmoString
from HVZFileTemplates.ZombieSaturation import generateZombieSaturationFile
from Util import zipDir
from HumanKitGenerator import generateHumanKits

"""
RUN THIS FILE TO GENERATE THE HVZ DATAPACK!
"""

data = []
with open('HVZWeaponInfo.csv') as f:
    data = [{k: str(v) for k, v in row.items()}
        for row in csv.DictReader(f, skipinitialspace=True)]

tagListPrimary = []
tagListSecondary = []

with open(f'{KIT_FILE_PATH}code_generated_kit_logic.mcfunction', 'w') as kitOutfile:
    print("Generating kits...")
    for i in range(len(data)):
        curData = data[i]

        isPrimaryWeapon = curData['weaponType'] == 'p'

        # print(curData)
        commandStr = f"# {curData['displayName']}\n"

        curData['lore'] = curData['lore'].replace('\'', '')

        if isPrimaryWeapon:
            commandStr += createPrimaryWeaponString(curData)
        else:
            commandStr += createSecondaryWeaponString(curData)

        if round(float(curData['ammoStacks'])) > 0:
            commandStr += createAmmoString(curData)


        commandStr += '\n'
        kitOutfile.write(commandStr)

        fileText = "# add tag\n"

        filePathPrimarySecondary = "primary"
        if not isPrimaryWeapon:
            filePathPrimarySecondary = "secondary"

        fileText += f"execute as @p run function hvz:kit_old/remove_code_generated_tags_{filePathPrimarySecondary}\n\n"
        fileText += f"tag @p add {curData['tagName']}\n\n"
        fileText += "# call human kit_old\n"
        fileText += "function hvz:kit_old/human"

        tagNameLower = str.lower(curData["tagName"])
        curFileName = f'human_kits/{filePathPrimarySecondary}/human_{tagNameLower}.mcfunction'

        with open(f'{KIT_FILE_PATH}{curFileName}', 'w') as curOutfile:
            curOutfile.write(fileText)

        # print(commandStr)

        if isPrimaryWeapon:
            tagListPrimary.append(curData['tagName'])
        else:
            tagListSecondary.append(curData['tagName'])

# Add special tags
tagListSecondary.append("bayonet")

with open(f"{KIT_FILE_PATH}remove_code_generated_tags_primary.mcfunction", 'w') as curOutfile:
    print("Adding primary tags to be removed...")
    curOutfile.write("# remove primary tags generated from python script\n")
    for tag in tagListPrimary:
        curStr = f"tag @s remove {tag}\n"
        curOutfile.write(curStr)

    curOutfile.write("\n# remove melee tags\n")
    curOutfile.write("execute as @s run function hvz:kit_old/remove_melee_tags\n")

with open(f"{KIT_FILE_PATH}remove_code_generated_tags_secondary.mcfunction", 'w') as curOutfile:
    print("Adding secondary tags to be removed...")
    curOutfile.write("# remove secondary tags generated from python script\n")
    for tag in tagListSecondary:
        curStr = f"tag @s remove {tag}\n"
        curOutfile.write(curStr)

    curOutfile.write("\n# remove melee tags\n")
    curOutfile.write("execute as @s run function hvz:kit_old/remove_melee_tags\n")

generateZombieSaturationFile()

generateHumanKits()

print("DONE!")

#Turn whole datapack into .zip file
zipDir('hvz/', 'hvz.zip')
