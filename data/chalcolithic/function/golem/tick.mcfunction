# Shears used
execute as @a if score @s chalcolithic.shears > @s chalcolithic.last_shears run function chalcolithic:golem/on_used
execute as @a run scoreboard players operation @s chalcolithic.last_shears = @s chalcolithic.shears

# Carved pumpkin used
execute as @a if score @s chalcolithic.carved_pumpkin > @s chalcolithic.last_carved_pumpkin run function chalcolithic:golem/on_used
execute as @a run scoreboard players operation @s chalcolithic.last_carved_pumpkin = @s chalcolithic.carved_pumpkin