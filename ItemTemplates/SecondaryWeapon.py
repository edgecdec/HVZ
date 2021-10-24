from Util import *
from Constants import *


def createSecondaryWeaponString(weaponData):
    commandStr = f'execute as @p if entity @s[team=HVZHuman,tag={weaponData["tagName"]}] '
    commandStr += f"run give @p {weaponData['minecraftToolName']}"
    commandStr += f'{{Unbreakable:1, {getCustomModelData(weaponData)}PublicBukkitValues: {{"mweps:mweps": "{weaponData["mWepsBlasterName"]}"}}, '
    commandStr += f"display: {{Name: {{\"extra\":[{{\"text\":\"{weaponData['displayName']}\"}}],\"text\":\"\"}}}},"

    commandStr += f"Lore:[{putStringOnMultipleLines(weaponData['lore'])}],"
    commandStr += f'AttributeModifiers:[{{AttributeName: "generic.armor", Amount:{str(weaponData["armor"])},'
    commandStr += 'Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},'
    commandStr += '{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Slot: "mainhand",'
    commandStr += f"Amount:{str(round(float(weaponData['speed']) * .01, 2))}, "
    commandStr += 'Operation: 1, UUID: [I;1009794932, 1066661964, 1014042860, 1605916940]},'
    commandStr += '{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",'
    commandStr += f'Amount: {str(DEFAULT_ATTACK_DAMAGE)}, '
    commandStr += 'Slot:"mainhand", Operation:0,UUID:[I;439,684,724,99]}]}\n'
    return commandStr
