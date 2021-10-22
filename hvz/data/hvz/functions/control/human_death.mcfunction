# subtract life from scoreboard
scoreboard players remove @a[team=HVZHuman,scores={HumanDeaths=1}] HVZLivesLeft 1

# add to zombie team
team join HVZZombie @a[team=HVZHuman,scores={HumanDeaths=1}]
tag @a[scores={HumanDeaths=1}] add zombieRegular
execute as @a[team=HVZHuman,scores={HumanDeaths=1}] run function hvz:kit/zombie
tag @a[team=HVZZombie,tag=HVZHuman] remove HVZHuman

execute as @a[scores={HumanDeaths=1}] run scoreboard players set @s HumanDeaths 0
