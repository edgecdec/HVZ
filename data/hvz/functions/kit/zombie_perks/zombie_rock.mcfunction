# add tags
execute as @p run function hvz:kit/remove_perk_tags_zombie
execute as @p run function hvz:control/join_zombie_team

tag @p add perkRock

# call zombie kit
execute as @p run function hvz:kit/zombie