execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkStrengthHuman
execute as @p if entity @s[team=HVZHuman,tag=perkStrengthHuman] run tellraw @p ["",{"text":""},{"text":"Your dedicated strength and combat training makes you deal much more melee damage. Good for bashing zombies away in tight situations.","color":"yellow"}]


execute as @p run function hvz:kit/human