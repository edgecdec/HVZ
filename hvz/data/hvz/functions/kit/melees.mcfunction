# Bayonet
execute as @p if entity @s[team=HVZHuman,tag=bayonet] run item replace entity @p armor.head with minecraft:leather_helmet{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"head",Amount:0.05,Operation:1,UUID:[I;1009794932,1066661964,1014042860,1605916940]},{AttributeName:"generic.armor",Name:"generic.armor",Slot:"head",Amount:2,Operation:0,UUID:[I;1009794932,1066661964,1014042860,1605916940]},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121011,24922,235952,-49844],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"head",Amount:4,Operation:0,UUID:[I;1059335874,1044139802,1077465565,1054126300]}],display:{color:7618688},Enchantments:[{id:binding_curse,lvl:1}]} 1

# Knight
execute as @p if entity @s[team=HVZHuman,tag=knight] run item replace entity @p weapon.offhand with shield{Unbreakable:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @p if entity @s[team=HVZHuman,tag=knight] run item replace entity @p armor.head with iron_helmet{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:15,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-1201127,2232,222451,-4464],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.max_health",Amount:20,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.max_health"}],Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @p if entity @s[team=HVZHuman,tag=knight] run give @p red_dye{Unbreakable:1,display:{Name:'[{"text":"Knight’s Longsword","italic":false}]'},Enchantments:[{id:smite,lvl:2}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1201127,607,22248,-1214],Slot:mainhand,Name:"generic.attack_damage"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=knight] run give @s golden_apple 4

# Warrior
execute as @p if entity @s[team=HVZHuman,tag=warrior] run item replace entity @p armor.head with chainmail_helmet{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:7,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-1201127,2232,222451,-4464],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.max_health"}],Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @p if entity @s[team=HVZHuman,tag=warrior] run give @p cyan_dye{Unbreakable:1,PublicBukkitValues: {"mweps:mweps": "Warrior-Bullrush"},display:{Name:'[{"text":"Warrior\'s Cleaver","italic":false}]'},Enchantments:[{id:smite,lvl:2}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9,Operation:0,UUID:[I;-1201127,9441,223030,-18882],Slot:mainhand,Name:"generic.attack_damage"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=warrior] run give @s golden_apple 4

# Paladin
execute as @p if entity @s[team=HVZHuman,tag=paladin] run item replace entity @p armor.head with golden_helmet{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:10,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-1201127,2232,222451,-4464],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.max_health",Amount:20,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.max_health"}],Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @p if entity @s[team=HVZHuman,tag=paladin] run give @p yellow_dye{Unbreakable:1,PublicBukkitValues: {"mweps:mweps": "Paladin-Blessing"},display:{Name:'[{"text":"Paladin\'s Battleaxe","italic":false}]'},Enchantments:[{id:knockback,lvl:1},{id:smite,lvl:2}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1201127,2930,223231,-5860],Slot:mainhand,Name:"generic.attack_damage"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=paladin] run give @s golden_apple 4

# Ninja
execute as @p if entity @s[team=HVZHuman,tag=ninja] run item replace entity @p armor.head with leather_helmet{Unbreakable:1,Enchantments:[{id:feather_falling,lvl:4},{id:binding_curse,lvl:1}],display:{color:1908001,Name:'[{"text":"Ninja Hoodie","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Operation:0,UUID:[I;-1201127,12796,22174,-25592],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-1201127,2232,222451,-4464],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.max_health",Amount:0,Operation:0,UUID:[I;-1201127,12796,22174,-25592],Slot:head,Name:"generic.max_health"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=ninja] run give @p green_dye{Unbreakable:1,PublicBukkitValues: {"mweps:mweps": "Ninja-Leap"},display:{Name:'[{"text":"Ninja\'s Blade","italic":false}]'},Enchantments:[{id:smite,lvl:2}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1201127,28773,223446,-57546],Slot:mainhand,Name:"generic.attack_damage"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=ninja] run give @p snowball{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Sock"}, display: {Name: '{"extra":[{"text":"Sock"}],"text":""}',Lore:['[{"text":"Extremely light weight with high ","italic":false,"color":"gold"}]','[{"text":"melee damage, and can be thrown ","italic":false,"color":"gold"}]','[{"text":"infinitely.  All around good backup ","italic":false,"color":"gold"}]','[{"text":"for zombies that get too close. ","italic":false,"color":"gold"}]']},AttributeModifiers:[{AttributeName: "generic.armor", Amount: 0, Operation: 0, UUID: [I;-120927, 18617, 194438, -37234], Slot: mainhand, Name: "generic.armor"},{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Slot: "mainhand",Amount: 0.4, Operation: 1, UUID: [I;1009794932, 1066661964, 1014042860, 1605916940]}]}
execute as @p if entity @s[team=HVZHuman,tag=ninja] run give @s golden_apple 4
# Ghost
execute as @p if entity @s[team=HVZHuman,tag=ghost] run give @p zombie_head{display:{Lore:['[{"text":"You can wear the head to trick zombies and reduce aggro.","color":"gold","bold":true},{"text":"","color":"gold","bold":false}]']},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:10,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-1201127,2232,222451,-4464],Slot:head,Name:"generic.attack_speed"},{AttributeName:"generic.max_health",Amount:10,Operation:0,UUID:[I;-1201127,17758,22911,-35516],Slot:head,Name:"generic.max_health"}]} 1
execute as @p if entity @s[team=HVZHuman,tag=ghost] run give @p carrot{Unbreakable:1,PublicBukkitValues: {"mweps:mweps": "Ghost-Dagger"},display:{Name:'[{"text":"Ghost\'s Dagger","italic":false}]',Lore:['[{"text":"Right click to become invisible and run faster."}]']},Enchantments:[{id:smite,lvl:2}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:40,Operation:0,UUID:[I;-1201127,28773,223446,-57546],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:0.33,Operation:0,UUID:[I;1050289740,1011151621,1031664269,1261185795]}]} 1
execute as @p if entity @s[team=HVZHuman,tag=ghost] run give @s minecraft:crossbow{Unbreakable:1,Enchantments:[{id:"minecraft:piercing",lvl:3},{id:"minecraft:quick_charge",lvl:3}]} 1
execute as @p if entity @s[team=HVZHuman,tag=ghost] run give @s minecraft:tipped_arrow{Unbreakable:1,CustomPotionEffects:[{Id:20,Amplifier:2,Duration:200,ShowIcon:0b},{Id:2,Amplifier:2,Duration:200,ShowIcon:0b}]} 32
execute as @p if entity @s[team=HVZHuman,tag=ghost] run give @s arrow 64