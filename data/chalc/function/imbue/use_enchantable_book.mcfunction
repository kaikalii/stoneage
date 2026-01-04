advancement revoke @s only chalc:use_enchantable_book

scoreboard players set #tries chalc 10
execute store result score @s chalc.y run data get entity @s Pos[1]
function chalc:imbue/build_enchantments