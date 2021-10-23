# clear inv
execute as @p run clear
effect clear @p

#items to everyone

# add the correct items based on tags

# run the generated file from
execute as @p run function hvz:kit/code_generated_kit_logic
execute as @p run function hvz:kit/melees

#items to give everyone
execute as @p run give @s golden_apple 4
execute as @p run give @s apple{PublicBukkitValues:{"mweps:mweps": "Medkit"},display:{Name:'[{"text":"Medkit"}]'}} 3
execute as @p if entity @s[team=HVZHuman,tag=!ghost] run item replace entity @p armor.chest minecraft:golden_chestplate{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:14,Slot:chest,Name:"generic.armor",UUID:[I;-121516,14894,171924,-29788]},{AttributeName:"generic.armor_toughness",Amount:8,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-121516,14994,171924,-29988]}],display:{Name:'[{"text":"Armband","italic":false}]'},Enchantments:[{id:binding_curse,lvl:1}]} 1

# special items
execute as @p run function hvz:kit/human_perks
