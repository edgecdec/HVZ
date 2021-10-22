# add 1 to the scoreboard timer
scoreboard objectives add BlizzardTimer dummy "Blizzard Timer"
scoreboard players add blizzardTimer BlizzardTimer 1
execute if score blizzardTimer BlizzardTimer matches 0 run 
execute if score blizzardTimer BlizzardTimer matches 100 run
execute if score blizzardTimer BlizzardTimer matches 140 run  
execute if score blizzardTimer BlizzardTimer matches 160 run  
execute if score blizzardTimer BlizzardTimer matches 180 run  
execute if score blizzardTimer BlizzardTimer matches 200 run  
execute if score blizzardTimer BlizzardTimer matches 220 run  
execute if score blizzardTimer BlizzardTimer matches 240 run  
execute if score blizzardTimer BlizzardTimer matches 260 run  
execute if score blizzardTimer BlizzardTimer matches 280 run  
execute if score blizzardTimer BlizzardTimer matches 300 run  
execute if score blizzardTimer BlizzardTimer matches 300 run  
execute if score blizzardTimer BlizzardTimer matches 310 run scoreboard objectives remove BlizzardTimer