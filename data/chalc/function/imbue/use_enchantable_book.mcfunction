advancement revoke @s only chalc:use_enchantable_book

scoreboard players set #tries chalc 10
execute store result score @s chalc.y run data get entity @s Pos[1]
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{"enchantable":1b}}}}}] store result score @s chalc.max_level run data get entity @s equipment.offhand.components."minecraft:custom_data".max_level
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"enchantable":1b}}}}] store result score @s chalc.max_level run data get entity @s SelectedItem.components."minecraft:custom_data".max_level
function chalc:imbue/build_enchantments