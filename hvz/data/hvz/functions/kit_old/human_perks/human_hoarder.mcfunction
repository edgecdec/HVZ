execute as @p run function hvz:kit/remove_perk_tags

execute as @p run tag @s add perkHoarder
execute as @p if entity @s[team=HVZHuman,tag=perkHoarder] run tellraw @p ["",{"text":""},{"text":"The Ammo Bundle can be used every 60 seconds to obtain extra ammo when right clicked. Left click to throw it as a makeshift grenade.","color":"yellow"}]


execute as @p run function hvz:kit/human