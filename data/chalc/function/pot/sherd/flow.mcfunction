execute unless data entity @s data.flow run return 0

execute if block ~ ~ ~ decorated_pot[waterlogged=false] run tag @s add spawned_water
execute if block ~ ~ ~ decorated_pot[waterlogged=false] run setblock ~ ~ ~ decorated_pot[waterlogged=true]