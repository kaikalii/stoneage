# Clear weather
execute as @s[tag=clear_weather] run weather clear

# Remove water
execute as @s[tag=spawned_water] if block ~ ~ ~ water run setblock ~ ~ ~ air
execute as @s[tag=spawned_water] if block ~ ~ ~ decorated_pot[waterlogged=true] run setblock ~ ~ ~ decorated_pot[waterlogged=false]

function chalc:pot/remove_range_effects