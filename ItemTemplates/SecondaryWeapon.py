from ParseStrings import *
from Constants import *


def createSecondaryWeaponString(curData):
    commandStr = ""
    commandStr += f'execute as @p if entity @s[team=HVZHuman,tag={curData["tagName"]}] '
    commandStr += f"run give @p {curData['minecraftToolName']}"
    commandStr += f'{{Unbreakable:1, PublicBukkitValues: {{"mweps:mweps": "{curData["mWepsBlasterName"]}"}}, '
    commandStr += f"display: {{Name: {{\"extra\":[{{\"text\":\"{curData['displayName']}\"}}],\"text\":\"\"}}}},"

    commandStr += f"Lore:[{putStringOnMultipleLines(curData['lore'])}],"
    commandStr += f'AttributeModifiers:[{{AttributeName: "generic.armor", Amount:{str(curData["armor"])},'
    commandStr += 'Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},'
    commandStr += '{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Slot: "mainhand",'
    commandStr += f"Amount:{str(round(float(curData['speed']) * .01, 2))}, "
    commandStr += 'Operation: 1, UUID: [I;1009794932, 1066661964, 1014042860, 1605916940]},'
    commandStr += '{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",'
    commandStr += f'Amount: {str(DEFAULT_ATTACK_DAMAGE)}, '
    commandStr += 'Slot:"mainhand", Operation:0,UUID:[I;439,684,724,99]}]}\n'
    return commandStr
