#Put Helmet on player
execute as @s run item replace entity @s armor.head with zombie_head{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-10,Slot:head,Name:"generic.attack_damage",UUID:[I;-122018,29275,212527,-58550]},{AttributeName:"generic.armor",Amount:10,Slot:head,Name:"generic.armor",UUID:[I;-122018,29375,212527,-58750]}],display:{Name:'[{"text":"Zombie Head","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:5}],HideFlags:3}

#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,33560,2553,-67120]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Put Pants on player
execute as @s run item replace entity @s armor.legs with leather_chestplate{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,33560,2553,-67120]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Put Boots on player
execute as @s run item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,32360,2553,-64720]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Give player a specific item
execute as @s run give @s wooden_sword{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:13.5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122018,20330,2232,-40660]},{AttributeName:"generic.attack_speed",Amount:-0.6,Slot:mainhand,Operation:1,Name:"generic.attack_speed",UUID:[I;-122018,20430,2232,-40860]}],display:{Name:'[{"text":"Pool Noodle","italic":false}]',Lore:['[{"text":"bonk","italic":false}]','[{"text":"","italic":false}]','[{"text":"When in Main Hand:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":" 4.5 Attack Damage","italic":false,"color":"dark_green"}]','[{"text":" 1.6 Attack Speed","italic":false,"color":"dark_green"}]']},Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3} 1

#Give player a specific item
execute as @s run give @s zombie_spawn_egg{PublicBukkitValues: {"mweps:mweps": "Zombie-Summon"},display:{Name:'[{"text":"Summon Zombie","italic":false,"color":"dark_green"}]',Lore:['[{"text":"Right click to summon 3 zombies to","italic":false}]','[{"text":"fight at your side. Zombies are weak","italic":false}]','[{"text":"but good for distraction.","italic":false}]','[{"text":"Cooldown: 30 Seconds","italic":false,"color":"red"}]']}} 1

#Give player a specific item
execute as @s run give @s black_dye{PublicBukkitValues: {"mweps:mweps": "Zombie-Leap"},display:{Name:'[{"text":"Zombie Leap","italic":false,"color":"dark_green"}]',Lore:['[{"text":"Right click to jump in the direction","italic":false}]','[{"text":"you\'re looking.","italic":false}]','[{"text":"Cooldown: 5 Seconds","italic":false,"color":"red"}]']}} 1

#Give player a specific item
execute as @s run give @s wooden_pickaxe{Unbreakable:1,display:{Name:'[{"text":"Zombie Pickaxe","italic":false,"color":"dark_green"}]',Lore:['[{"text":"dig","italic":false}]']},HideFlags:24,CanDestroy:[stone,dirt,grass_block,grass,tall_grass,granite,andesite,diorite,cobblestone,vine,oak_log,oak_planks,oak_leaves,spruce_log,spruce_planks,spruce_leaves,jungle_log,jungle_planks,jungle_leaves,acacia_log,acacia_planks,acacia_leaves,birch_log,birch_planks,birch_leaves,dark_oak_log,dark_oak_planks,dark_oak_leaves,sand,gravel,clay,coarse_dirt,bamboo]} 1

