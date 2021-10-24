# add tags
execute as @p run function hvz:kit/remove_code_generated_tags_zombie
execute as @p run function hvz:control/join_zombie_team

tag @p add fireblaster

# call zombie kit
execute as @p run function hvz:kit/zombie