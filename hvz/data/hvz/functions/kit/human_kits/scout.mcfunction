#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:3847130,Name:'[{"text":"Scout Chestplate","italic":false}]',Lore:['[{"text":"Increases movement speed and fall","italic":false}]','[{"text":"damage resistance.","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:7,Slot:chest,Name:"generic.armor",UUID:[I;-122030,33035,1940,-66070]},{AttributeName:"generic.armor_toughness",Amount:4,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-122030,33135,1940,-66270]},{AttributeName:"generic.movement_speed",Amount:0.2,Slot:chest,Operation:1,Name:"generic.movement_speed",UUID:[I;-122030,33235,1940,-66470]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:feather_falling,lvl:5},{id:protection,lvl:3}]}

#Give player a specific item
execute as @s run give @s sugar{PublicBukkitValues: {"mweps:mweps": "Scout-Ability"},CustomModelData:1,display:{Name:'[{"text":"Adrenaline Rush","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to gain extra speed for","italic":false}]','[{"text":"10 seconds.","italic":false}]','[{"text":"Cooldown: 45 Seconds","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Speed (0:10)","italic":false,"color":"blue"}]']}} 1
