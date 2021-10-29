# Clear inventories
execute as @a[team=ScavengerHunt] run clear

# Remove Teams
team remove ScavengerHunt
team remove ScavengerFinished

# Remove Scoreboard Objective
scoreboard objectives remove TreasuresLeft
scoreboard objectives remove ScavengerRanking

# Remove Tags
tag @a remove brick
tag @a remove diamond
tag @a remove gold_ingot
tag @a remove finished