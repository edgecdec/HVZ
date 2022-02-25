# add tags
execute as @p run function hvz:kit/remove_tags
execute as @p run function hvz:control/join_zombie_team

tag @p add zombieOriginal

# call zombie kit
execute as @p run function hvz:kit/zombie