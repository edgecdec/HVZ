from ScavengerConstants import *

# Generate all the files
def generateItemsToFindFiles():
    """
    generates the files for what happens when you find each item
    """
    for item in ITEMS:
        giveCommand = '# Found a treasure\n'
        giveCommand += f'give @a[distance=..{DEFAULT_DISTANCE},tag=!{item},team=ScavengerHunt] {item}\n\n'

        soundCommand = '# Play sound to user indicating they have found an item\n'
        soundCommand += 'playsound block.note_block.bell block @p ~ ~ ~ 5 0 1\n\n'

        tellCommand = '# Tell user the item they have found\n'
        tellCommand += f'tellraw @p ["", {{"text": "You found "}},{{"text": "a {item}!", "bold": true, "color": "red"}}]\n\n'

        treasureLeftCommand = '# subtract 1 from treasures left\n'
        treasureLeftCommand += f'scoreboard players remove @a[distance= ..{DEFAULT_DISTANCE},tag=!{item},team=ScavengerHunt] TreasuresLeft 1\n\n'

        tagAddCommand = '# add tag indicating they found the treasure\n'
        tagAddCommand += f'tag @a[distance=..{DEFAULT_DISTANCE},team=ScavengerHunt] add {item}\n\n'

        finishCommand = '# check to see if anyone has won\n'
        finishCommand += 'function scavenger:items/see_if_anyone_finished\n\n'

        with open(f'{DIR_PATH}/items/scavenger_found_{item}.mcfunction', 'w+') as outfile:
            outfile.write(f'{giveCommand}{soundCommand}{tellCommand}{treasureLeftCommand}{finishCommand}')
        outfile.close()
