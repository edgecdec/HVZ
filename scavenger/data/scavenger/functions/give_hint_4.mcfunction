execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run give @s filled_map{map:170963}
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run tellraw @s {"text":"Hint 3 Found!","color":"green"}
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run scoreboard players add @s HintsFound 1
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run tag @s add cottage3