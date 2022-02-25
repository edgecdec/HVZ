execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkEngie
execute as @p if entity @s[team=HVZHuman,tag=perkEngie] run tellraw @p ["",{"text":""},{"text":"The Sentry PDA lets you call in snow golems and iron golems to your aid. Right click to summon a snow golem every 6 seconds, left click to summon an iron golem every minute.","color":"yellow"}]

execute as @p run function hvz:kit/human