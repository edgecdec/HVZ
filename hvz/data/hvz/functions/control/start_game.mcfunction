# set everyone's lives
scoreboard players set @a[team=HVZHuman] HVZLivesLeft 1
scoreboard players set @a[team=HVZHuman] HumanDeaths 0

# Display objective for users in game
scoreboard objectives setdisplay sidebar.team.dark_green HVZLivesLeft
scoreboard objectives setdisplay sidebar.team.yellow HVZLivesLeft

# start giving perk items
scoreboard objectives add HoarderTimer dummy "Hoarder Timer"
scoreboard objectives add MedicTimer dummy "Medic Timer"
scoreboard objectives add HDeathTimer dummy "Human Death Timer"
scoreboard objectives add WitherTimer dummy "Wither Timer"


# create scoreboard objectives for Mob/Player/Zombie Kills
scoreboard objectives add MZombiesKilled minecraft.custom:minecraft.mob_kills "Mobs Zombies Killed"
scoreboard objectives add TotalKills dummy "Total Zombies Killed"
scoreboard objectives add PlayersKilled minecraft.custom:minecraft.player_kills "Players Killed"

# create scoreboard objectives for Human/Zombie player kills
scoreboard objectives add PKilledAsZombie dummy "Humans Killed"
scoreboard objectives add PKilledAsHuman dummy "Zombie Players Killed"

# tp people to starting locations
#execute as @a[team=HVZHuman] run tp 918 87 -1112
#execute as @a[team=HVZZombie] run tp 1330 26 -449 

# give everyone regen
effect give @a minecraft:regeneration 10 255 true

# add HVZHuman tag
tag @a[team=HVZHuman] add HVZHuman

# add NPCs to team
team join HVZHuman @e[name=sentry]

fill 1855 46 -506 1855 46 -506 minecraft:redstone_block
# fill 1855 46 -506 1855 46 -506 minecraft:air
