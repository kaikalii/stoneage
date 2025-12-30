# Milk used
execute as @a if score @s stoneage.milk > @s stoneage.last_milk run function stoneage:milk/on_used
execute as @a run scoreboard players operation @s stoneage.last_milk = @s stoneage.milk

# Get milk
execute as @e[type=cow,nbt={Age:0}] run function stoneage:milk/try_milk
execute as @e[type=goat,nbt={Age:0}] run function stoneage:milk/try_milk