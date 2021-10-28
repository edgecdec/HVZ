# Found a treasure (ideally we generate this whole file - or most of it - in python)
execute as @p run give @a[distance=..4,tag=!crypt,team=ScavengerHunt] minecraft:tripwire_hook{display:{Name:'[{"text":"Key #1","italic":false,"color":"gold"}]',Enchantments:[{id:aqua_affinity,lvl:1}],HideFlags:1}} 1

execute as @p run playsound block.grindstone block @a[distance=..4,tag=!crypt,team=ScavengerHunt] ~ ~ ~ 5 0 1

execute as @p run summon 

# subtract 1 from treasures left
execute as @p run scoreboard players remove @a[distance= ..4, tag=!crypt_1, team=ScavengerHunt] TreasuresLeft 1

# add tag indicating they found the treasure
execute as @p run tag @a[distance=..4, team=ScavengerHunt] add crypt_1

# check to see if anyone has won
execute as @p run function scavenger:items/see_if_anyone_finished