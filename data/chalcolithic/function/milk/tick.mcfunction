# Milk used
execute as @a if score @s chalcolithic.milk > @s chalcolithic.last_milk run function chalcolithic:milk/on_used
execute as @a run scoreboard players operation @s chalcolithic.last_milk = @s chalcolithic.milk

# Get milk
execute as @e[type=cow,nbt={Age:0}] run function chalcolithic:milk/try_milk
execute as @e[type=goat,nbt={Age:0}] run function chalcolithic:milk/try_milk