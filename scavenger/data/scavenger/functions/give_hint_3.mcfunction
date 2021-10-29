execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run give @s filled_map{map:170963} 1
execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run tellraw @s {"text":"Hint 3 Found!","color":"green"}
execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run scoreboard players add @s HintsFound 1
execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run effect give @s blindness 10 1 true
execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run tag @s add cottage3
execute as @a[distance=..4,tag=!cottage3,team=ScavengerHunt] run summon minecraft:vindicator