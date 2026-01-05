execute store result score #item_count chalc run data get block ~ ~ ~ Items
$execute if score #item_count chalc matches $(max_size) run return 0

data modify storage chalc:macro fill set from entity @s Item
data modify storage chalc:macro fill merge value {components: {}}
function chalc:fill/fill_with with storage chalc:macro fill
kill @s
