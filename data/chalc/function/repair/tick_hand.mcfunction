# Check that the item in the other hand is damaged
scoreboard players set #damage chalc 0
$execute store result score #damage chalc run data get entity @s $(equipment_path).components."minecraft:damage"
execute if score #damage chalc matches 0 run return 0

# Check that the material repairs the item in the other hand
$execute store result score #repair_amount chalc run function chalc:repair/repair_amount {material:$(material), equipment:$(equipment)}
execute if score #repair_amount chalc matches 0 run return 0

# Make the material usable
$item modify entity @s weapon.$(material) chalc:make_material_usable