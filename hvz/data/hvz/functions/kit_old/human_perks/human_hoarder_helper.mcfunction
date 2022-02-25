# add all withers to zombie team
#team join HVZZombie @e[type=wither,team=!HVZZombie]
#effect give @e[type=wither] resistance 100000 3
#attribute @e[type=wither,limit=1] minecraft:generic.knockback_resistance base set 1
effect give @e[tag=wither] resistance 1 1
effect give @e[tag=wither,nbt=!{ActiveEffects:[{Id:24b}]}] resistance 1 3


# clear slowness from zombies
effect clear @a[team=HVZZombie,tag=perkWarmth] slowness

# update player kills
function hvz:control/kill_update_helper
