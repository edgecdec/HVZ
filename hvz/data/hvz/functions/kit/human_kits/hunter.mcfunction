#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:8439583,Name:'[{"text":"Hunter Chestplate","italic":false}]',Lore:['[{"text":"Offers high protection against","italic":false}]','[{"text":"projectiles, and moderate protection","italic":false}]','[{"text":"against other types of damage.","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Slot:chest,Name:"generic.armor",UUID:[I;-122030,7804,193451,-15608]},{AttributeName:"generic.armor_toughness",Amount:3,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-122030,7904,193451,-15808]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:projectile_protection,lvl:3},{id:protection,lvl:2}]}

#Give player a specific item
execute as @s run give @s coal{PublicBukkitValues: {"mweps:mweps": "Hunter-Ability"},CustomModelData:1,display:{Name:'[{"text":"Spectral Quiver","italic":false,"color":"gold"}]',Lore:['[{"text":"Right click to receive 5 Spectral","italic":false}]','[{"text":"Arrows. Use these to track and mark","italic":false}]','[{"text":"enemies, or lend them to allies who","italic":false}]','[{"text":"need more ammo.","italic":false}]','[{"text":"Cooldown: 60 Seconds","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+5 Spectral Arrow","italic":false,"color":"blue"}]']}} 1

#Give player a specific item
execute as @s run give @s bow{Unbreakable:1,display:{Name:'[{"text":"Hunter\'s Bow","italic":false,"color":"gold"}]',Lore:['[{"text":"Shoots things dead.","italic":false}]']},Enchantments:[{id:power,lvl:2}]} 1

