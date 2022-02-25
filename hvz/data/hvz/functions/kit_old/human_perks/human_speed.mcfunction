execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkSpeed
execute as @p if entity @s[team=HVZHuman,tag=perkSpeed] run tellraw @p ["",{"text":""},{"text":"Your cardio training and expensive running shoes make you run much faster.","color":"yellow"}]


execute as @p run function hvz:kit/human