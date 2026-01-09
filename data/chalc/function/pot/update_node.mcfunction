execute unless block ~ ~ ~ decorated_pot run return run function chalc:pot/despawn_node

execute if score @s chalc.pot_timer <= @s chalc.pot_fuel_time run function chalc:pot/pot_effect
scoreboard players add @s chalc.pot_timer 1
execute if score @s chalc.pot_timer >= @s chalc.pot_fuel_time run function chalc:pot/consume_fuel

function chalc:pot/update_node_text