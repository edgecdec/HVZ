# Shield
execute as @p if entity @s[team=HVZZombie,tag=shield] run item replace entity @p weapon.offhand shield{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"offhand",Amount:-0.15,Operation:1,UUID:[I;1049074567,1073785333,1008769292,1148444914]}]}

# Bucket Head
execute as @p if entity @s[team=HVZZombie,tag=bucket] run item replace entity @p armor.chest netherite_chestplate{display:{Name:'[{"text":"Dartproof Vest","italic":false}]',Lore:['[{"text":"Armor made from plastic and duct","italic":false}]','[{"text":"tape. Reduces damage taken from","italic":false}]','[{"text":"darts.","italic":false}]']},Enchantments:[{id:projectile_protection,lvl:4}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:8,Operation:0,UUID:[I;1040987233,1057995409,1068821407,1617564440]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"chest",Amount:-0.10,Operation:1,UUID:[I;1040987233,1057995409,1068821407,1617564440]}]}

#execute as @p if entity @p[team=HVZZombie,tag=bucket] run item replace entity @p armor.head minecraft:player_head{display:{Name:"{\"text\":\"Bucket Hat\"}"},SkullOwner:{Id:[I;287717139,1075792392,-2088685014,-1903647225],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRmNzVmOGQxZmU2N2FjODhkZWM0Y2E2YzU2NTlhNmY1YmY2ZDQ1ZGVkYTVkOWM1ZmFhNDM2ZTE4ZWE3ODFhMiJ9fX0="}]}}}{Unbreakable:1,Enchantments:[{id:"minecraft:projectile_protection",lvl:5}]} 1

# Fireball
execute as @p if entity @s[team=HVZZombie,tag=fireblaster] run give @s blaze_rod{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Undead-Fireball"}, Enchantments:[{id:fire_aspect,lvl:1}],display: {Name: '{"extra":[{"text":"Undead Fireball"}],"text":""}',Lore:['[{"text":"Right click to shoot a fireball that ignites whatever it hits.","italic":false,"color":"gold"}]','[{"text":"Left click to set enemies on fire in melee.","italic":false,"color":"gold"}]']}} 1


# Stray Horde
execute as @s[team=HVZZombie,tag=strayhorde] run give @s stray_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Summon-Stray"}, display: {Name: '{"extra":[{"text":"Stray Horde"}],"text":""}',Lore:['[{"text":"Spawns 3 strays on right click.","italic":false,"color":"gold"}]','[{"text":"","italic":false,"color":"gold"}]']}} 1

# Bombie
execute as @s[team=HVZZombie,tag=bombie] run give @s salmon_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Bombie"}, display: {Name: '{"extra":[{"text":"Bombie Egg"}],"text":""}',Lore:['[{"text":"Spawns a suicidal explosive zombie on right click.","italic":false,"color":"gold"}]','[{"text":"","italic":false,"color":"gold"}]']}} 1

