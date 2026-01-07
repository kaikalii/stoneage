execute store success score #has_item chalc run data get block ~ ~ ~ Items[0]
execute if score #has_item chalc matches 0 run return 0

data modify storage chalc:macro drain set from block ~ ~ ~ Items[0]
data remove block ~ ~ ~ Items[0]
execute at @s run function chalc:drain/spawn_item with storage chalc:macro drain