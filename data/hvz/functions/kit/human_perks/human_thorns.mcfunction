execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkThorns
execute as @p if entity @s[team=HVZHuman,tag=perkThorns] run tellraw @p ["",{"text":""},{"text":"Your spiked armored vest protects you from harm and damages zombies that attack you.","color":"yellow"}]

execute as @p run function hvz:kit/human