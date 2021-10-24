# add a tag if not already on the human team
execute as @p if entity @s[team=!HVZHuman] run tag @p add joiningHuman

# clear effects
effect clear @p
#clear inv
execute as @p run clear

# add player to human team
team join HVZHuman @p
tag @p add HVZHuman

# give player default kit
#execute as @p if entity @s[team=HVZHuman,tag=joiningHuman] run function hvz:kit/human_kits/human_strongarm

# remove join tag
tag @p remove joiningHuman

#reset lives left
scoreboard players set @p HVZLivesLeft 1

playsound ambient.cave block @p ~ ~ ~ 5 0 1 

#tellraw @p ["",{"text":""},{"text":"Welcome to the Apocalypse! If you need gear, the Armory is on your left. Be sure to head downstairs for extra equipment!","color":"yellow"}]
#tellraw @p ""
#tellraw @p ["",{"text":""},{"text":"New to the game? Procede down the hall for instructions.","color":"yellow"}]
#tellraw @p ""
#tellraw @p ["",{"text":""},{"text":"Feel free to grab a coffee from the only working Starbux on Campus, or a Red Bull if that's more your taste.","color":"yellow"}]
#tellraw @p ""
#tellraw @p ["",{"text":""},{"text":"And good luck out there!","color":"yellow"}]

