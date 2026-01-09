function chalc:tick_use_tracker {item:water_bucket, f:"function chalc:bucket/use_water"}
function chalc:tick_use_tracker {item:lava_bucket, f:"function chalc:bucket/use_lava"}

execute as @n[type=marker,tag=water_node] at @s run function chalc:bucket/tick_node {fluid:water}
execute as @n[type=marker,tag=lava_node] at @s run function chalc:bucket/tick_node {fluid:lava}

execute as @a at @s run function chalc:hitscan {f:"if block ~ ~ ~ dispenser run function chalc:bucket/dispenser"}
