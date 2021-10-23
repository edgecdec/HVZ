# clear inv
execute as @s run clear

# give zombie kits

# level 0
execute as @s[team=HVZZombie] run item replace entity @s armor.head zombie_head{display:{Name:'[{"text":"Zombie Head","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-121015,8425,232735,-16850],Slot:head,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-121015,8425,232735,-16850],Slot:head,Name:"generic.movement_speed"},{AttributeName:"generic.max_health",Amount:20,Operation:0,UUID:[I;-121015,8425,232735,-16850],Slot:head,Name:"generic.max_health"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121015,30896,234243,-61792],Slot:head,Name:"generic.attack_speed"}]} 1
# execute as @s[team=HVZZombie] run item replace entity @s armor.head zombie_head{AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;-120919,16616,215743,-33232],Slot:head,Name:"generic.movement_speed"},{AttributeName:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-120919,16616,215743,-33232],Slot:head,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-120919,16616,215743,-33232],Slot:head,Name:"generic.attack_speed"}],Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @s[team=HVZZombie] run give @s zombie_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Summon-(Zombie)"}, display: {Name: '{"extra":[{"text":"Zombie Horde"}],"text":""}',Lore:['[{"text":"Spawns 3 normal regular zombies on right click.","italic":false,"color":"gold"}]','[{"text":"Spawns a berserker zombie on left click.","italic":false,"color":"gold"}]']}} 1

# If have kills, clear inv
execute as @s[scores={PKilledAsZombie=1..}] run clear

# level 1
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=1}] run item replace entity @s armor.head zombie_head{display:{Name:'[{"text":"Zombie Head +1","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;-121015,15679,233136,-31358],Slot:head,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:0.25,Operation:1,UUID:[I;-121015,15679,233136,-31358],Slot:head,Name:"generic.movement_speed"},{AttributeName:"generic.max_health",Amount:30,Operation:0,UUID:[I;-121015,15679,233136,-31358],Slot:head,Name:"generic.max_health"},{AttributeName:"generic.armor",Amount:3,Operation:0,UUID:[I;-121015,15679,233136,-31358],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121015,30896,234243,-61792],Slot:head,Name:"generic.attack_speed"}]} 1
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=1}] run give @s zombie_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Summon-(OZ)"}, display: {Name: '{"extra":[{"text":"Zombie Horde +1"}],"text":""}',Lore:['[{"text":"Spawns 6 normal regular zombies on right click.","italic":false,"color":"gold"}]','[{"text":"Spawns 2 berserker zombies on left click.","italic":false,"color":"gold"}]']}} 1

# level 2
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=2}] run item replace entity @s armor.head zombie_head{display:{Name:'[{"text":"Zombie Head +2","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-121015,10355,23348,-20710],Slot:head,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;-121015,10355,23348,-20710],Slot:head,Name:"generic.movement_speed"},{AttributeName:"generic.max_health",Amount:40,Operation:0,UUID:[I;-121015,10355,23348,-20710],Slot:head,Name:"generic.max_health"},{AttributeName:"generic.armor",Amount:5,Operation:0,UUID:[I;-121015,10355,23348,-20710],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121015,30896,234243,-61792],Slot:head,Name:"generic.attack_speed"}]} 1
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=2}] run give @s zombie_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Summon-(Super-Zombie)"}, display: {Name: '{"extra":[{"text":"Zombie Horde +2"}],"text":""}',Lore:['[{"text":"Spawns 10 normal regular zombies on right click.","italic":false,"color":"gold"}]','[{"text":"Spawns 3 berserker zombies on left click.","italic":false,"color":"gold"}]']}} 1

# level 3+
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=3..}] run item replace entity @s armor.head zombie_head{display:{Name:'[{"text":"Super Zombie Head","italic":false}]'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-121015,3328,233724,-6656],Slot:head,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:0.35,Operation:1,UUID:[I;-121015,3328,233724,-6656],Slot:head,Name:"generic.movement_speed"},{AttributeName:"generic.max_health",Amount:60,Operation:0,UUID:[I;-121015,3328,233724,-6656],Slot:head,Name:"generic.max_health"},{AttributeName:"generic.armor",Amount:8,Operation:0,UUID:[I;-121015,3328,233724,-6656],Slot:head,Name:"generic.armor"},{AttributeName:"generic.attack_speed",Amount:20,Operation:0,UUID:[I;-121015,30896,234243,-61792],Slot:head,Name:"generic.attack_speed"}]} 1
execute as @s if entity @s[team=HVZZombie,scores={PKilledAsZombie=3..}] run give @s zombie_spawn_egg{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Summon-(Zombie4)"}, display: {Name: '{"extra":[{"text":"Zombie Horde +3"}],"text":""}',Lore:['[{"text":"Spawns 10 normal regular zombies on right click.","italic":false,"color":"gold"}]','[{"text":"Spawns 3 berserker zombies on left click.","italic":false,"color":"gold"}]']}} 1
effect give @s[team=HVZZombie,scores={PKilledAsZombie=3..}] minecraft:glowing 1000000 255 true

execute as @s if entity @s[team=HVZZombie] run give @s clock{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Player-Finder"}, display: {Name: '{"extra":[{"text":"Player Finder"}],"text":""}',Lore:['[{"text":"Points to the nearest human.","italic":false,"color":"gold"}]','[{"text":"10 second cooldown.","italic":false,"color":"gold"}]']}} 1
execute as @s if entity @s[team=HVZZombie] run give @s black_dye{Unbreakable:1, PublicBukkitValues: {"mweps:mweps": "Zombie-Leap"}, display: {Name: '{"extra":[{"text":"Zombie Leap"}],"text":""}',Lore:['[{"text":"Jump high up in the air by right clicking.","italic":false,"color":"gold"}]']}} 1

effect give @s[team=HVZZombie] minecraft:night_vision 1000000 255 true

# run the generated file from
execute as @p run function hvz:kit/code_generated_kit_logic_zombie

# special items
execute as @p run function hvz:kit/zombie_perks

