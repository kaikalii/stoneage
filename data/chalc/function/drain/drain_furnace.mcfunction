execute store success score #has_item chalc run data get block ~ ~1 ~ Items[{Slot:2b}]
execute if score #has_item chalc matches 0 run return 0

data modify storage chalc:macro drain set from block ~ ~1 ~ Items[{Slot:2b}]
data remove block ~ ~1 ~ Items[{Slot:2b}]
function chalc:drain/spawn_item with storage chalc:macro drain