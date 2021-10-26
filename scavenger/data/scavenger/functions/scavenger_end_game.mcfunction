# Clear inventories
execute as @a[team=ScavengerHunt] run clear

# Remove Team
team remove ScavengerHunt
team remove ScavengerFinished

# Remove Scoreboard Objective
scoreboard objectives remove TreasuresLeft
scoreboard objectives remove ScavengerRanking

# Remove Tags (since this repeats ideally we do this via python)
tag @a remove brick
tag @a remove two
tag @a remove three
tag @a remove four
tag @a remove five
tag @a remove six
tag @a remove seven
tag @a remove eight
tag @a remove nine
tag @a remove ten
tag @a remove eleven
tag @a remove twelve
tag @a remove thirteen
tag @a remove fourteen
tag @a remove fifteen
tag @a remove sixteen
tag @a remove seventeen
tag @a remove eighteen
tag @a remove finished