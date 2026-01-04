# Shears used
execute as @a if score @s chalc.shears > @s chalc.last_shears run function chalc:golem/on_used
execute as @a run scoreboard players operation @s chalc.last_shears = @s chalc.shears

# Carved pumpkin used
execute as @a if score @s chalc.carved_pumpkin > @s chalc.last_carved_pumpkin run function chalc:golem/on_used
execute as @a run scoreboard players operation @s chalc.last_carved_pumpkin = @s chalc.carved_pumpkin