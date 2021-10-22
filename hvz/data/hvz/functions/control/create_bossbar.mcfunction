scoreboard objectives add BossbarTimer dummy "Boss Timer"
bossbar add boss_zombie "Scientist"
bossbar set minecraft:boss_zombie max 120
team join HVZZombie @p
tag @p add wither
bossbar set minecraft:boss_zombie players @a
bossbar set minecraft:boss_zombie color red
bossbar set minecraft:boss_zombie style notched_6
bossbar set minecraft:boss_zombie name {"text":"Shade of Patient Zero","color":"red","bold":"true"}

