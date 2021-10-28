# Clear inventories
execute as @a[team=ScavengerHunt] run clear

# Remove Team
team remove ScavengerHunt
team remove ScavengerFinished

# Remove Scoreboard Objective
scoreboard objectives remove TreasuresLeft
scoreboard objectives remove ScavengerRanking

# Remove Tags
tag @a remove one
tag @a remove FINISHED