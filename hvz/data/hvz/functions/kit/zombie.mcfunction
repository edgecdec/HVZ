#Join Zombie Team
execute as @s run team join HVZZombie @s

#Clear player inventory
execute as @s run clear

#Clear player effects
execute as @s run effect clear @s

#Give player tracking compass
execute as @s run function player_tracker:compass/track_player

#Add 0 to score to make sure it exists
execute as @s run scoreboard players add @s PKilledAsZombie 0

#Execute correct file based on tag
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=..0}] run function hvz:kit/zombie_kits/zombie_zero
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=1}] run function hvz:kit/zombie_kits/zombie_one
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=2}] run function hvz:kit/zombie_kits/zombie_two
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=3..}] run function hvz:kit/zombie_kits/zombie_three
