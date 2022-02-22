from Util import *
from HVZConstants import *

def createPrimaryWeaponString(weaponData):
    commandStr = f"execute as @p if entity @s[team=HVZHuman,tag={weaponData['tagName']}] "
    commandStr += 'run item replace entity @p armor.head with minecraft:leather_helmet{Unbreakable:1,'
    commandStr += 'AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"head",Amount:'
    commandStr += f"{str(round(float(weaponData['speed']) * .01, 2))}"
    commandStr += ',Operation:1,UUID:[I;1009794932,1066661964,1014042860,1605916940]},'
    commandStr += '{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:2,Operation:0,UUID:[I;1009794932,1066661964,1014042860,1605916940]},'
    commandStr += '{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121011,24922,235952,-49844],Slot:chest,Name:"generic.attack_speed"}],display:{color:7618688},'
    commandStr += 'Enchantments:[{id:binding_curse,lvl:1}]} 1\n'

    commandStr += f"execute as @p if entity @s[team=HVZHuman,tag={weaponData['tagName']}] "
    commandStr += f"run give @p {weaponData['minecraftToolName']}"
    commandStr += f'{{Unbreakable:1, {getCustomModelData(weaponData)}PublicBukkitValues: {{"mweps:mweps": "{weaponData["mWepsBlasterName"]}"}},'
    commandStr += f'display: {{Name: \'[{{"text":"{weaponData["displayName"]}","bold":false,"italic":false}}]\','
    commandStr += f"Lore:[{putStringOnMultipleLines(weaponData['lore'])}]}}, "
    commandStr += f'AttributeModifiers:[{{AttributeName: "generic.armor", Amount: {str(weaponData["armor"])}'
    commandStr += ', Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},'
    commandStr += '{AttributeName:"generic.attack_damage",Name:"generic.attack_damage", '
    commandStr += f'Amount: {str(DEFAULT_ATTACK_DAMAGE)}, Slot:"mainhand", Operation:0,UUID:[I;439,684,724,99]}}]}}\n'

    return commandStr