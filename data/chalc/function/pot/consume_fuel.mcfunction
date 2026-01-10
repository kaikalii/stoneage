execute unless items block ~ ~ ~ contents #chalc:pot_fuel run return run function chalc:pot/remove_my_effects
playsound block.fire.ambient block @a
scoreboard players set @s chalc.pot_timer 0
item modify block ~ ~ ~ contents {function:set_count,count:-1,add:true}
function chalc:pot/pot_effect
particle large_smoke ~ ~0.7 ~ 0.1 0.1 0.1 0 2