scoreboard players add medicTimer MedicTimer 1
execute if score medicTimer MedicTimer matches 200 run function hvz:kit/human_perks/human_medic_helper
execute if score medicTimer MedicTimer matches 200 run scoreboard players set medicTimer MedicTimer 0