execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkCure
execute as @p if entity @s[team=HVZHuman,tag=perkCure] run tellraw @p ["",{"text":""},{"text":"Drinking the Red Bull gives you wings. Not actually, but it makes you much stronger and faster for 3 minutes.","color":"yellow"}]

execute as @p run function hvz:kit/human