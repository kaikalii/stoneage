execute as @a run function chalc:hitscan {f:"if block ~ ~ ~ #trapdoors if predicate chalc:drainable_nearby align xyz positioned ~0.5 ~0.5 ~0.5 run return run function chalc:drain/spawn_node"}
execute as @e[type=marker,nbt={CustomName:"Drain Node"}] at @s run function chalc:drain/tick_node
