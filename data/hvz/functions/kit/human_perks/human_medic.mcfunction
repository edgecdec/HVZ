execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkMedic
execute as @p if entity @s[team=HVZHuman,tag=perkMedic] run tellraw @p ["",{"text":""},{"text":"The Improved Medkit is reusable and lets you heal both yourself and your teammates every 30 seconds. Right click to heal yourself and nearby teammates over time.","color":"yellow"}]

execute as @p run function hvz:kit/human