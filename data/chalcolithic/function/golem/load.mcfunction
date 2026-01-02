# Track shears being used
scoreboard objectives add chalcolithic.shears minecraft.used:shears
scoreboard objectives add chalcolithic.last_shears dummy
execute as @a run scoreboard players operation @s chalcolithic.last_shears = @s chalcolithic.shears

# Track carved pumpkins being used
scoreboard objectives add chalcolithic.carved_pumpkin minecraft.used:carved_pumpkin
scoreboard objectives add chalcolithic.last_carved_pumpkin dummy
execute as @a run scoreboard players operation @s chalcolithic.last_carved_pumpkin = @s chalcolithic.carved_pumpkin