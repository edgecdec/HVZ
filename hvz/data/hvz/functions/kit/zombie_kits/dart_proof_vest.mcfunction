#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:1908001,Name:'[{"text":"Dart-Proof Vest","italic":false,"color":"dark_green"}]',Lore:['[{"text":"Increases your natural armor and","italic":false}]','[{"text":"grants high resistance to all","italic":false}]','[{"text":"projectiles.","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:3,Slot:chest,Name:"generic.armor",UUID:[I;-122124,32792,23415,-65584]},{AttributeName:"generic.armor_toughness",Amount:5,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-122124,32892,23415,-65784]}],Enchantments:[{id:projectile_protection,lvl:2},{id:protection,lvl:3},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}
