# Found a treasure
give @a[distance=..5,tag=!diamond,team=ScavengerHunt] diamond

# Play sound to user indicating they have found an item
playsound block.note_block.bell block @p ~ ~ ~ 5 0 1

# Tell user the item they have found
tellraw @p ["", {"text": "You found "},{"text": "a diamond!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
scoreboard players remove @a[distance= ..5,tag=!diamond,team=ScavengerHunt] TreasuresLeft 1

# check to see if anyone has won
function scavenger:items/see_if_anyone_finished

