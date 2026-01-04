# Track shears being used
scoreboard objectives add chalc.shears minecraft.used:shears
scoreboard objectives add chalc.last_shears dummy
execute as @a run scoreboard players operation @s chalc.last_shears = @s chalc.shears

# Track carved pumpkins being used
scoreboard objectives add chalc.carved_pumpkin minecraft.used:carved_pumpkin
scoreboard objectives add chalc.last_carved_pumpkin dummy
execute as @a run scoreboard players operation @s chalc.last_carved_pumpkin = @s chalc.carved_pumpkin