# give correct perk based on tag.

effect clear @p

effect give @s[team=HVZZombie] minecraft:night_vision 1000000 255 true

effect give @s[team=HVZZombie] minecraft:fire_resistance 1000000 255 true

execute as @p if entity @s[team=HVZZombie,tag=perkStrength] run effect give @p minecraft:strength 1000000 0 true

execute as @p if entity @s[team=HVZZombie,tag=perkWarmth] run tag @p add coldBlood

execute as @p if entity @s[team=HVZZombie,tag=perkHealth] run effect give @p minecraft:absorption 1000000 4 true

execute as @p if entity @s[team=HVZZombie,tag=perkSwift] run effect give @p minecraft:speed 1000000 0 true
execute as @p if entity @s[team=HVZZombie,tag=perkSwift] run effect give @p minecraft:jump_boost 1000000 0 true

execute as @p if entity @s[team=HVZZombie,tag=perkRock] run replaceitem entity @p armor.legs leather_leggings{display:{"color":1640448,Name:'[{"text":"Invincible Athletic Pants"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Slot:"legs",Amount:1,Operation:1,UUID:[I;1007165276,1025448352,1007673513,1540559398]}]} 

execute as @p if entity @s[team=HVZZombie,tag=perkRegen] run effect give @p minecraft:regeneration 1000000 2 true

effect give @s[team=HVZZombie] minecraft:night_vision 1000000 255 true