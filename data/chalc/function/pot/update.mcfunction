# Undo effects
function chalc:pot/remove_range_effects
# Do effects
execute as @e[type=text_display,tag=pot_node] at @s run function chalc:pot/update_node

schedule function chalc:pot/update 20