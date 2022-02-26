#Put Helmet on player
execute as @s run item replace entity @s armor.head with zombie_head{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-10,Slot:head,Name:"generic.attack_damage",UUID:[I;-122018,29275,212527,-58550]},{AttributeName:"generic.armor",Amount:14,Slot:head,Name:"generic.armor",UUID:[I;-122018,29375,212527,-58750]}],display:{Name:'[{"text":"Zombie Head","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:5}],HideFlags:3}

#Put Chestplate on player
execute as @s run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,33560,2553,-67120]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Put Pants on player
execute as @s run item replace entity @s armor.legs with leather_chestplate{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,33560,2553,-67120]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Put Boots on player
execute as @s run item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,32360,2553,-64720]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3}

#Give player a specific item
execute as @s run give @s zombie_three 1

#Give player a specific item
execute as @s run give @s 3.. 1

#Give player a specific item
execute as @s run give @s zombie_head{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-10,Slot:head,Name:"generic.attack_damage",UUID:[I;-122018,29275,212527,-58550]},{AttributeName:"generic.armor",Amount:14,Slot:head,Name:"generic.armor",UUID:[I;-122018,29375,212527,-58750]}],display:{Name:'[{"text":"Zombie Head","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1},{id:feather_falling,lvl:10},{id:projectile_protection,lvl:5}],HideFlags:3} 1

#Give player a specific item
execute as @s run give @s leather_chestplate{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,33560,2553,-67120]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3} 1

#Give player a specific item
execute as @s run give @s leather_leggings{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,32360,2553,-64720]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3} 1

#Give player a specific item
execute as @s run give @s leather_boots{Unbreakable:1,display:{color:6192150,Name:'[{"text":"Zombie Armor","italic":false}]',Lore:['[{"text":"brains","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-122030,32360,2553,-64720]}],Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:3} 1

