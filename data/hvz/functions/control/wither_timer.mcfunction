scoreboard players add witherTimer WitherTimer 1
execute if score witherTimer HoarderTimer matches 20 run function hvz:control/wither_helper
execute if score witherTimer HoarderTimer matches 20 run scoreboard players set witherTimer WitherTimer 0