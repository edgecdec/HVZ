# remove primary human kit tags
execute as @s run function hvz:kit/remove_code_generated_tags_primary
execute as @s run function hvz:kit/remove_code_generated_tags_secondary

# remove zombie kit tags
tag @s remove zombieRegular
tag @s remove zombieOriginal
tag @s remove zombieSuper
