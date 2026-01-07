# Spawn nodes
execute as @a run function chalc:hitscan {f:"if block ~ ~ ~ #chalc:copper_trapdoors if predicate chalc:drainable_nearby align xyz positioned ~0.5 ~0.5 ~0.5 run return run function chalc:drain/spawn_node"}

# Update timer
scoreboard players add #drain_timer chalc 1
execute if score #drain_timer chalc matches 20 run scoreboard players set #drain_timer chalc 0

execute unless score #drain_timer chalc matches 0 run return 0
# Tick node
execute as @e[type=marker,nbt={CustomName:"Drain Node"}] at @s run function chalc:drain/tick_node
