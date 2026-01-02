# Track milk being used
scoreboard objectives add chalcolithic.milk minecraft.used:milk_bucket
scoreboard objectives add chalcolithic.last_milk dummy
execute as @a run scoreboard players operation @s chalcolithic.last_milk = @s chalcolithic.milk