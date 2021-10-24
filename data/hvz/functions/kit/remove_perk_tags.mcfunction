# remove perk tags
tag @s remove perkSpeed
tag @s remove perkLifesteal
tag @s remove perkHoarder
tag @s remove perkMedic
tag @s remove perkThorns
tag @s remove perkEngie
tag @s remove perkCure
tag @s remove perkStrengthHuman

effect clear @p 

# reset kit to default
execute as @s run function hvz:kit/human