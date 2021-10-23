import csv
from Util import *
from Constants import *
from ItemTemplates.PrimaryWeapon import *
from ItemTemplates.SecondaryWeapon import *
from ItemTemplates.Ammo import *

data = []
with open('HVZWeaponInfo.csv') as f:
    data = [{k: str(v) for k, v in row.items()}
        for row in csv.DictReader(f, skipinitialspace=True)]

tagListPrimary = []
tagListSecondary = []

# TODO: use f strings for all of this

with open(f'{KIT_FILE_PATH}code_generated_kit_logic.mcfunction', 'w') as kitOutfile:
    print("Generating kits...")
    for i in range(len(data)):
        curData = data[i]

        isPrimaryWeapon = curData['weaponType'] == 'p'

        # print(curData)
        commandStr = '# ' + curData['displayName'] + '\n'

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
        if isPrimaryWeapon:
            fileText += "execute as @p run function hvz:kit/remove_code_generated_tags_primary\n\n"
        else:
            fileText += "execute as @p run function hvz:kit/remove_code_generated_tags_secondary\n\n"
        fileText += "tag @p add " + curData['tagName'] + "\n\n"
        fileText += "# call human kit\n"
        fileText += "function hvz:kit/human"

        curFileName = ''
        if isPrimaryWeapon:
            curFileName = 'human_kits/primary/human_' + str.lower(curData['tagName']) + '.mcfunction'
        else:
            curFileName = 'human_kits/secondary/human_' + str.lower(curData['tagName']) + '.mcfunction'
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
        curStr = "tag @s remove " + tag + "\n"
        curOutfile.write(curStr)

    curOutfile.write("\n# remove melee tags\n")
    curOutfile.write("execute as @s run function hvz:kit/remove_melee_tags\n")

with open(f"{KIT_FILE_PATH}remove_code_generated_tags_secondary.mcfunction", 'w') as curOutfile:
    print("Adding secondary tags to be removed...")
    curOutfile.write("# remove secondary tags generated from python script\n")
    for tag in tagListSecondary:
        curStr = "tag @s remove " + tag + "\n"
        curOutfile.write(curStr)

    curOutfile.write("\n# remove melee tags\n")
    curOutfile.write("execute as @s run function hvz:kit/remove_melee_tags\n")

print("DONE!")