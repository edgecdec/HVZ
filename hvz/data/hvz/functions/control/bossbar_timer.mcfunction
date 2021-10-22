scoreboard players add bossbarTimer BossbarTimer 1
execute if score bossbarTimer BossbarTimer matches 10 run function hvz:control/update_bossbar
execute if score bossbarTimer BossbarTimer matches 10 run scoreboard players set bossbarTimer BossbarTimer 0