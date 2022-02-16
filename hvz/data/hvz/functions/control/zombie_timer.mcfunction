scoreboard players add zombieSatTimer ZombieSatTimer 1
execute if score zombieSatTimer ZombieSatTimer matches 6 run function hvz:control/zombie_timer
execute if score zombieSatTimer ZombieSatTimer matches 6 run scoreboard players set zombieSatTimer ZombieSatTimer 0
