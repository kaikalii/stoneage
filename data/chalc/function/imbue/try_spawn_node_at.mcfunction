scoreboard players set #temp chalc 0
execute as @n[type=marker,tag=enchantment_node,distance=..3] run scoreboard players set #temp chalc 1
execute if score #temp chalc matches 1 run return run function chalc:imbue/way_too_close

scoreboard players set #temp chalc 0
execute as @n[type=marker,tag=enchantment_node,distance=..144] run scoreboard players set #temp chalc 1
execute if score #temp chalc matches 1 run return run function chalc:imbue/too_close

function chalc:imbue/spawn_node
return 1