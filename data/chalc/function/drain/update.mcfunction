# Tick node
execute as @e[type=marker,tag=drain_node] at @s run function chalc:drain/update_node
schedule function chalc:drain/update 1s
