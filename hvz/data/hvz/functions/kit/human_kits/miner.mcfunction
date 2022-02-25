#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:1908001,Name:'[{"text":"Miner Chestplate","italic":false}]',Lore:['[{"text":"Offers moderate protection against","italic":false}]','[{"text":"damage and high resistance to fire.","italic":false}]','[{"text":"Good for mining.","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:7,Slot:chest,Name:"generic.armor",UUID:[I;-122030,23804,193451,-47608]},{AttributeName:"generic.armor_toughness",Amount:5,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-122030,23904,193451,-47808]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:fire_protection,lvl:3},{id:protection,lvl:3}]}

#Give player a specific item
execute as @s run give @s iron_ingot{PublicBukkitValues: {"mweps:mweps": "Miner-Ability"},CustomModelData:1,display:{Name:'[{"text":"Excavator","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click for increased mining","italic":false}]','[{"text":"speed and attack speed for 30","italic":false}]','[{"text":"seconds.","italic":false}]','[{"text":"Cooldown: 90 Seconds","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Haste III (0:30)","italic":false,"color":"blue"}]']}} 1

#Give player a specific item
execute as @s run give @s iron_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Miner\'s Pickaxe","italic":false,"color":"gold"}]',Lore:['[{"text":"Mines ores good.","italic":false}]']},Enchantments:[{id:fortune,lvl:2}]} 1

