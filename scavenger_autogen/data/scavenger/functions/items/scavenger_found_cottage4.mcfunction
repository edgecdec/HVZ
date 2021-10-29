# Found a treasure
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run give @s pimpkin

# Give player a map
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run give @s filled_map{map: 170963}

# Play sound to user indicating they have found an item
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run playsound block.note_block.bell block @s ~ ~ ~ 5 0 1

# Tell user the item they have found
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run tellraw @s ["", {"text": "You found "},{"text": "a pimpkin!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run scoreboard players remove @s TreasuresLeft 1

# check to see if anyone has won
function scavenger:control/see_if_anyone_finished

