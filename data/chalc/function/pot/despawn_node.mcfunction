function chalc:pot/remove_my_effects

execute if score @s chalc.pot_timer <= @s chalc.pot_fuel_time run function chalc:pot/destroy_effect

kill @s