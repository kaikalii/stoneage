# Shears used
execute as @a if score @s stoneage.shears > @s stoneage.last_shears run function stoneage:golem/on_used
execute as @a run scoreboard players operation @s stoneage.last_shears = @s stoneage.shears

# Carved pumpkin used
execute as @a if score @s stoneage.carved_pumpkin > @s stoneage.last_carved_pumpkin run function stoneage:golem/on_used
execute as @a run scoreboard players operation @s stoneage.last_carved_pumpkin = @s stoneage.carved_pumpkin