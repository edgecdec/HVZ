execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] give @p minecraft:player_head{SkullOwner:lotusMMI} 1
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run tellraw @s {"text":"Hint 4 Found!","color":"green"}
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run scoreboard players add @s HintsFound 3
execute as @a[distance=..4,tag=!cottage2,team=ScavengerHunt] run tag @s add cottage4