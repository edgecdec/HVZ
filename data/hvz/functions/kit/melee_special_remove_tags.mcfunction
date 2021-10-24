# Remove melee tags
execute as @s run function hvz:kit/melee_remove_tags

# Remove tags from script
execute as @s run function hvz:kit/remove_code_generated_tags_secondary
execute as @s run function hvz:kit/remove_code_generated_tags_primary