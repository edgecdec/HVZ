# clear inventory
execute as @p run clear

# set scoreboard treasures left to 0
scoreboard players set @p TreasuresLeft 1
scoreboard players set @p ScavengerRanking 0

# join team
execute as @p run team join ScavengerHunt