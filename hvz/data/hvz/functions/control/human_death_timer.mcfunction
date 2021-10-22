scoreboard players add hDeathTimer HDeathTimer 1
execute if score hDeathTimer HDeathTimer matches 20 run function hvz:control/human_death
execute if score hDeathTimer HDeathTimer matches 20 run scoreboard players set hDeathTimer HDeathTimer 0