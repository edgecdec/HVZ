# Found a treasure
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run give @s pumpkin

Give player a head
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run give @s player_head{SkullOwner:lotusMMI}# Play sound to user indicating they have found an item
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run playsound block.note_block.bell block @s ~ ~ ~ 5 0 1

# Tell user the item they have found
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run title @s title ["", {"text": "You found "},{"text": "a pumpkin!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
execute as @a[distance=..5,tag=!cottage4,team=ScavengerHunt] run scoreboard players remove @s TreasuresLeft 1

# check to see if anyone has won
function scavenger:control/see_if_anyone_finished

