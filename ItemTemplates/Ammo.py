from Constants import *
from Util import *

def createAmmoString(weaponData):
    arrowName = getArrowName(weaponData['arrowType'])
    ammoAmount = str(round(float(weaponData["ammoStacks"]) * 64))

    commandStr = f'execute as @p if entity @s[team=HVZHuman,tag={weaponData["tagName"]}] '
    commandStr += f'run give @p {arrowName} {ammoAmount}\n'
    return commandStr