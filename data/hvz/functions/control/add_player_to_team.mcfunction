# clear player inventory
execute as @p run clear

# join playing team
team join HVZPlaying @p

# add to human team by default
function hvz:control/join_human_team

# tp player into room
# execute as @p run tp @s 1317.99999 26 -471 180 0
