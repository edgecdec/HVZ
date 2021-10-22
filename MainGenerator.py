import csv
import ParseStrings

def getArrowName(val):
    if(val == 's'):
        return 'spectral_arrow'
    else:
        return 'arrow'


DEFAULT_ATTACK_DAMAGE = 2

BASE_FILE_PATH = "hvz/data/hvz/functions/"
KIT_FILE_PATH = f"{BASE_FILE_PATH}kit/"
CONTROL_FILE_PATH = f"{BASE_FILE_PATH}control/"

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
            commandStr += 'execute as @p if entity @s[team=HVZHuman,tag=' \
                          + curData['tagName'] + \
                          '] run replaceitem entity @p armor.head minecraft:leather_helmet{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"head",Amount:' + \
                          str(round(float(curData['speed']) * .01, 2)) + \
                          ',Operation:1,UUID:[I;1009794932,1066661964,1014042860,1605916940]},{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:2,Operation:0,UUID:[I;1009794932,1066661964,1014042860,1605916940]},' + \
                          '{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121011,24922,235952,-49844],Slot:chest,Name:"generic.attack_speed"}' + \
                          '],display:{color:7618688}' + \
                          ',Enchantments:[{id:binding_curse,lvl:1}]' + \
                          '} 1\n'

            commandStr += 'execute as @p if entity @s[team=HVZHuman,tag=' + \
                          curData['tagName'] + \
                          '] run give @p ' + \
                          curData['minecraftToolName'] + \
                          '{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "' + \
                          curData['mWepsBlasterName'] + \
                          '"}, display: {Name: \'{"extra":[{"text":"' + \
                          curData['displayName'] + \
                          '"}],"text":""}\',Lore:[' + \
                          ParseStrings.putStringOnMultipleLines(curData['lore']) + \
                          ']},' + \
                          'AttributeModifiers:[{AttributeName: "generic.armor", Amount: ' + \
                          str(curData['armor']) + \
                          ', Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},' + \
                          '{AttributeName:"generic.attack_damage",Name:"generic.attack_damage", ' + \
                          'Amount: ' + str(DEFAULT_ATTACK_DAMAGE) + \
                          ', Slot:"mainhand", Operation:0,UUID:[I;439,684,724,99]}' + \
                          ']' + \
                          '}\n'
        else:
            commandStr += 'execute as @p if entity @s[team=HVZHuman,tag=' + \
                          curData['tagName'] + \
                          '] run give @p ' + \
                          curData['minecraftToolName'] + \
                          '{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "' + \
                          curData['mWepsBlasterName'] + \
                          '"}, display: {Name: \'{"extra":[{"text":"' + \
                          curData['displayName'] + \
                          '"}],"text":""}\',Lore:[' + \
                          ParseStrings.putStringOnMultipleLines(curData['lore']) + \
                          ']},' + \
                          'AttributeModifiers:[{AttributeName: "generic.armor", Amount: ' + \
                          str(curData['armor']) + \
                          ', Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},' + \
                          '{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Slot: "mainhand",' + \
                          'Amount: ' + \
                          str(round(float(curData['speed']) * .01, 2)) + \
                          ', Operation: 1, UUID: [I;1009794932, 1066661964, 1014042860, 1605916940]},' + \
                          '{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",' + \
                          'Amount: ' + str(DEFAULT_ATTACK_DAMAGE) + \
                          ', Slot:"mainhand", Operation:0,UUID:[I;439,684,724,99]}' + \
                          ']}\n'

        if round(float(curData['ammoStacks'])) > 0:
            commandStr += 'execute as @p if entity @s[team=HVZHuman,tag=' + \
                          curData['tagName'] + \
                          '] run give @p ' + \
                          getArrowName(curData['arrowType']) + \
                          ' ' + \
                          str(round(float(curData['ammoStacks']) * 64)) + \
                          '\n'

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