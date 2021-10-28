# Found a treasure
give @a[distance=..4,tag=!brick,team=ScavengerHunt] brick

brick# Play sound to user indicating they have found an itemplaysound block.note_block.bell block @p ~ ~ ~ 5 0 1

# Tell user the item they have foundtellraw @p ["", {"text": "You found "},{"text": "a brick!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
scoreboard players remove @a[distance= ..4,tag=!brick,team=ScavengerHunt] TreasuresLeft 1

# check to see if anyone has won
function scavenger:items/see_if_anyone_finished