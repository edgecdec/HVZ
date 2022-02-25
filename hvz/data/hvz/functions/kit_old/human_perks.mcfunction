# give correct perk based on tag.
execute as @p if entity @s[team=HVZHuman,tag=perkSpeed] run item replace entity @p armor.feet with leather_boots{Unbreakable:1,display:{Name:'[{"text":"Running Shoes","italic":false}]'},Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"feet",Amount:2,Operation:0,UUID:[I;1089114242,1067924363,1028592449,1412378466]},{AttributeName:"generic.movement_speed",Amount:0.15,Operation:1,UUID:[I;-120924,13151,175222,-26302],Slot:feet,Name:"generic.movement_speed"}]}

execute as @p if entity @s[team=HVZHuman,tag=perkMedic] run give @p glistering_melon_slice{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Medic-Syringe"}, display: {Name: '{"extra":[{"text":"Improved Medkit"}],"text":""}',Lore:['[{"text":"The Improved Medkit is reusable and lets you heal both ","italic":false,"color":"gold"}]','[{"text":"yourself and your teammates every 30 seconds.","italic":false,"color":"gold"}]','[{"text":"Right click to heal yourself and nearby teammates over time.","italic":false,"color":"gold"}]']}} 1

execute as @p if entity @s[team=HVZHuman,tag=perkHoarder] run give @p ender_pearl{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Ammo-Pouch"}, display: {Name: '{"extra":[{"text":"Ammo Bundle"}],"text":""}',Lore:['[{"text":"The Ammo Bundle can be used every 60 seconds to obtain extra ammo when right clicked. ","italic":false,"color":"gold"}]','[{"text":"Left click to throw it as a makeshift grenade.","italic":false,"color":"gold"}]']}} 1

execute as @p if entity @s[team=HVZHuman,tag=perkThorns] run item replace entity @p armor.chest with chainmail_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:14,Slot:chest,Name:"generic.armor",UUID:[I;-121516,21094,171924,-42188]},{AttributeName:"generic.armor_toughness",Amount:12,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-121516,21194,171924,-42388]},{AttributeName:"generic.movement_speed",Amount:-0.05,Slot:chest,Operation:1,Name:"generic.movement_speed",UUID:[I;-121516,21294,171924,-42588]}],display:{Name:'[{"text":"Spiked Vest","italic":false}]'},Enchantments:[{id:binding_curse,lvl:1},{id:protection,lvl:5},{id:thorns,lvl:3}]} 1


execute as @p if entity @s[team=HVZHuman,tag=perkCure] run give @p minecraft:potion{PublicBukkitValues: {"mweps:mweps": "The-Cure"}, display: {Name: '{"extra":[{"text":"Red Bull"}],"text":""}',Lore:['[{"text":"Hold to save yourself, or prematurely inject for a powerful buff.","italic":false,"color":"gold"}]']}} 1

execute as @p if entity @s[team=HVZHuman,tag=perkEngie] run give @p ghast_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Sentry"}, display: {Name: '{"extra":[{"text":"Sentry PDA"}],"text":""}',Lore:['[{"text":"Right click to spawn snow golems, left click for an iron golem.","italic":false,"color":"gold"}]']}} 1

execute as @p if entity @s[team=HVZHuman,tag=perkStrengthHuman] run effect give @p minecraft:strength 1000000 1 true
execute as @p if entity @s[team=HVZHuman,tag=perkStrengthHuman] run effect give @p minecraft:health_boost 1000000 0 true