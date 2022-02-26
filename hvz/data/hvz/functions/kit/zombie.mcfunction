#Join Zombie Team
execute as @s run team join HVZZombie @s

#Clear player inventory
execute as @s run clear

#Clear player effects
execute as @s run effect clear @s

#Execute correct file based on tag
execute as @s run if @s[team=HVZZombie,scores={PKilledAsZombie=..0}] run hvz:kit/zombie_kits/zombie_zero
execute as @s run if @s[team=HVZZombie,scores={PKilledAsZombie=1}] run hvz:kit/zombie_kits/zombie_one
execute as @s run if @s[team=HVZZombie,scores={PKilledAsZombie=2}] run hvz:kit/zombie_kits/zombie_two
execute as @s run if @s[team=HVZZombie,scores={PKilledAsZombie=3..}] run hvz:kit/zombie_kits/zombie_three
