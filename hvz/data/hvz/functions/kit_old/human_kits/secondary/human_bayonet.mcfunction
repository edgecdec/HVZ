# add tag
execute as @p run function hvz:kit/remove_code_generated_tags_secondary
tellraw @p ["",{"text":"Attaches to your primary blaster, turning it into a decent melee weapon. Please don't do this IRL...","color":"yellow"}]
tag @p add bayonet

# call human kit
function hvz:kit/human