
# Get current damage
$execute store result score #damage chalc run data get entity @s $(equipment_path).components.minecraft:damage
execute if score #damage chalc matches 0 run return run function chalc:do_nothing

# Get repair amount
$execute store result score #repair_amount chalc run function chalc:repair/repair_amount {material:$(material), equipment:$(equipment)}
execute if score #repair_amount chalc matches 0 run return run function chalc:do_nothing

# Handle repair timer
execute if score @s chalc.repair_timer matches 0 run playsound block.anvil.use block @a ^-0.5 ^1 ^1
scoreboard players add @s chalc.repair_timer 2
execute if score @s chalc.repair_timer matches 5 run function chalc:repair/effect
execute if score @s chalc.repair_timer matches 13 run function chalc:repair/effect
execute if score @s chalc.repair_timer matches 21 run function chalc:repair/effect
execute unless score @s chalc.repair_timer matches 24.. run return run function chalc:do_nothing

# Calculate new damage and repair
scoreboard players operation #damage chalc -= #repair_amount chalc
execute unless score #damage chalc matches 0.. run scoreboard players set #damage chalc 0
execute store result storage chalc:macro repair.damage int 1 run scoreboard players get #damage chalc
$data modify storage chalc:macro repair merge value {material:$(material),equipment:$(equipment)}
function chalc:repair/repair with storage chalc:macro repair
