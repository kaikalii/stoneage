# Remove any lingering effects from pots that may have been destroyed

# Unnullify creepers
execute as @e[type=creeper,tag=nullified] run attribute @s follow_range base set 16
execute as @e[type=creeper,tag=nullified] run data modify entity @s ExplosionRadius set value 3
execute as @e[type=creeper,tag=nullified] run tag @s remove nullified

# Clear weather
execute as @s[tag=clear_weather] run weather clear

kill @s