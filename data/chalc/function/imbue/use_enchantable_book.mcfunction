advancement revoke @s only chalc:use/enchantable_book

execute unless data entity @s SelectedItem.components."minecraft:custom_data".enchantable unless data entity @s equipment.offhand.components."minecraft:custom_data".enchantable run return 0

execute unless score @s chalc.imbue_timer matches 0 run return 0
scoreboard players set @s chalc.imbue_timer 20

scoreboard players set #tries chalc 10
scoreboard players set #too_expensive chalc 0
execute store result score @s chalc.y run data get entity @s Pos[1]

execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{"enchantable":1b}}}}}] store result score @s chalc.max_level run data get entity @s equipment.offhand.components."minecraft:custom_data".max_level
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"enchantable":1b}}}}] store result score @s chalc.max_level run data get entity @s SelectedItem.components."minecraft:custom_data".max_level

execute store result score @s chalc.levels run xp query @s levels
execute if score @s chalc.levels matches 0 run return run function chalc:imbue/not_enough_xp

function chalc:imbue/build_enchantments