# Tick node
execute as @e[type=marker,nbt={CustomName:"Drain Node"}] at @s run function chalc:drain/update_node
schedule function chalc:drain/update 1s
