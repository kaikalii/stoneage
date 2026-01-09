# Spawn nodes
execute as @a run function chalc:hitscan {f:"if block ~ ~ ~ #chalc:copper_trapdoors if predicate chalc:drainable_nearby align xyz positioned ~0.5 ~0.5 ~0.5 run return run function chalc:drain/spawn_node"}
