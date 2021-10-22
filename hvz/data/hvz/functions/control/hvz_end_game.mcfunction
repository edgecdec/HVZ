# Clear inventories
execute as @a[team=HVZHuman] run clear
execute as @a[team=HVZZombie] run clear
execute as @p run function hvz:kit/remove_tags

# Remove Team
team remove HVZPlaying

# Remove Scoreboard Objective
scoreboard objectives remove HVZLivesLeft
scoreboard objectives remove HumanDeaths
scoreboard objectives remove HoarderTimer
scoreboard objectives remove MedicTimer
scoreboard objectives remove BlizzardTimer
scoreboard objectives remove WitherTimer

#Remove tags and teams
tag @a remove waitingHVZ
team remove HVZPlaying
team remove HVZZombie
team remove HVZHuman

fill 1855 46 -504 1855 46 -504 minecraft:redstone_block
# fill 1855 46 -504 1855 46 -504 minecraft:air

# get rid of boss bar
bossbar remove minecraft:boss_zombie

