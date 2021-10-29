# Found a treasure (ideally we generate this whole file - or most of it - in python)
give @a[distance=..4,tag=!brick,team=ScavengerHunt] gold_ingot{display:{Name:'[{"text":"Lucky Red Packet","italic":false,"color":"gold"}]',Enchantments:[{id:aqua_affinity,lvl:1}],HideFlags:1} 1

playsound block.note_block.bell block @a[distance=..4,tag=!brick,team=ScavengerHunt] ~ ~ ~ 5 0 1

tellraw @a[distance=..4,tag=!brick,team=ScavengerHunt] ["", {"text": "You found "},{"text": "BRICK!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
scoreboard players remove @a[distance= ..4, tag=!brick, team=ScavengerHunt] TreasuresLeft

# add tag indicating they found the treasure
tag @a[distance=..4, team=ScavengerHunt] add brick

# check to see if anyone has won
function scavenger:items/see_if_anyone_finished