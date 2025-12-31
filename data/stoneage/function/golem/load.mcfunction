# Track shears being used
scoreboard objectives add stoneage.shears minecraft.used:shears
scoreboard objectives add stoneage.last_shears dummy
execute as @a run scoreboard players operation @s stoneage.last_shears = @s stoneage.shears

# Track carved pumpkins being used
scoreboard objectives add stoneage.carved_pumpkin minecraft.used:carved_pumpkin
scoreboard objectives add stoneage.last_carved_pumpkin dummy
execute as @a run scoreboard players operation @s stoneage.last_carved_pumpkin = @s stoneage.carved_pumpkin