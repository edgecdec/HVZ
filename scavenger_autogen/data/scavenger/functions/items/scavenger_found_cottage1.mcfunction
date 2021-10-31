# Found a treasure
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run give @s pumpkin

# Give player a book
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run give @s written_book{pages:['["",{"text":"9/28/21\\nOur Love Forever \\n\\n"},{"text":"Wearing; White blouse and a satin tan skirt. Hair is in a ponytail, wore too much mascara.","italic":true},{"text":"\\n\\nWhen I came across your work, I surprisingly saw you there. You\'re not usually \\n ","color":"reset"}]','["",{"text":"there on Sundays. You told me that you had forgotten the paperwork from last meeting. You did notice my haircut, though. I\'m surprised. Out of all the people, you complimented me. Do you secretly admire me? "},{"text":"I bought this small cottage on the outskirts of town, ","color":"dark_red"}]','{"text":"because I know we can have a beautiful life together. I can already see it. You cooking for me, making me my favorite food. We would live a wonderful life together. You shouldn\'t be living in that crappy apartment anyways. "}','{"text":"When will you acknowledge that we\'re meant to be? I drive 3 hours just to see you. You\'re making me impatient, but I know it\'ll be worth it."}'],title:"Book 1",author:Ted}

# Play sound to user indicating they have found an item
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run playsound block.note_block.bell block @s ~ ~ ~ 5 0 1

# Tell user the item they have found
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run title @s title ["", {"text": "You found "},{"text": "a pumpkin!", "bold": true, "color": "red"}]

# subtract 1 from treasures left
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run scoreboard players remove @s TreasuresLeft 1

# add tag indicating they found the treasure
execute as @a[distance=..5,tag=!cottage1,team=ScavengerHunt] run tag @s add cottage1

# check to see if anyone has won
function scavenger:control/see_if_anyone_finished

