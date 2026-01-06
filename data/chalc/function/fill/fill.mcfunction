data modify storage chalc:macro fill set from entity @s Item
data modify storage chalc:macro fill merge value {components: {}}

# If the container has all slots filled, try to fill with 1 item at a time
execute store result score #item_count chalc run data get block ~ ~ ~ Items
$execute if score #item_count chalc matches $(max_size) run return run function chalc:fill/fill_slow with storage chalc:macro fill

# Otherwise put the whole stack in there
function chalc:fill/fill_fast with storage chalc:macro fill
