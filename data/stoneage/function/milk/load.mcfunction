# Track milk being used
scoreboard objectives add stoneage.milk minecraft.used:milk_bucket
scoreboard objectives add stoneage.last_milk dummy
execute as @a run scoreboard players operation @s stoneage.last_milk = @s stoneage.milk