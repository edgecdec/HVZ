#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:16383998,Name:'[{"text":"Medic Chestplate","italic":false}]',Lore:['[{"text":"Increases resistance to fire, but","italic":false}]','[{"text":"not especially protective. Be","italic":false}]','[{"text":"cautious as a Medic, and use your","italic":false}]','[{"text":"medkit wisely.","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:chest,Name:"generic.armor",UUID:[I;-122030,60335,1940,-120670]},{AttributeName:"generic.armor_toughness",Amount:3,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-122030,60435,1940,-120870]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:fire_protection,lvl:3},{id:protection,lvl:2}]}

#Give player a specific item
execute as @s run give @s glistering_melon_slice{PublicBukkitValues: {"mweps:mweps": "Medic-Ability"},CustomModelData:1,display:{Name:'[{"text":"Medkit","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to heal yourself by 4","italic":false}]','[{"text":"hearts and nearby players for 2","italic":false}]','[{"text":"hearts.","italic":false}]','[{"text":"Cooldown: 30 Seconds","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Instant Health","italic":false,"color":"blue"}]','[{"text":"Regeneration (0:10)","italic":false,"color":"blue"}]']}} 1

