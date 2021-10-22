# add 1 to the scoreboard timer
scoreboard players add hoarderTimer HoarderTimer 1
execute if score hoarderTimer HoarderTimer matches 10 run function hvz:kit/human_perks/human_hoarder_helper
execute if score hoarderTimer HoarderTimer matches 10 run scoreboard players set hoarderTimer HoarderTimer 0