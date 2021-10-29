# adds scoreboard Treasures Left
scoreboard objectives add TreasuresLeft dummy {"text":"Items Left","bold":true}
scoreboard objectives add ScavengerRanking dummy {"text":"Scavenger Ranking","bold":true}
scoreboard objectives add HintsFound dummy {"text":"Total Score", "bold":true}

# adds Scavenger Hunt Team
team add ScavengerHunt "ScavengerHunt"
team modify ScavengerHunt color light_purple

# add Scavenger Finished Team
team add ScavengerFin "ScavengerFinished"
team modify ScavengerFin color dark_blue

# if player has waitingScavenger tag have them join the team
execute as @a[tag=waitingScavenger] run team join ScavengerHunt

# clear player inventory
execute as @a[team=ScavengerHunt] run clear

# set all treasures to unfound (we should set this using python ideally)
scoreboard players set @a[team=ScavengerHunt] TreasuresLeft 18

# Display objective for users in scavenger hunt
scoreboard objectives setdisplay sidebar.team.light_purple TreasuresLeft

# Display objective for users in scavenger finished team
scoreboard objectives setdisplay sidebar.team.dark_blue ScavengerFin