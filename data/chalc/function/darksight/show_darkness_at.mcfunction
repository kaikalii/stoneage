execute store result score #temp chalc run random value 0..1
execute if score #temp chalc > #0 chalc run return 0
execute unless block ~ ~ ~ air run return 0
execute if block ~ ~-1 ~ #chalc:prevents_spawns run return 0
execute if block ~ ~-1 ~ #slabs[type=bottom] run return 0
execute if block ~ ~-1 ~ #stairs[half=bottom] run return 0
execute if predicate chalc:dark_inside run return run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.1 0 0.1 0 1 normal @s
execute if predicate chalc:dark_outside run particle dust{color:[0,0,0.3],scale:1} ~ ~ ~ 0.1 0 0.1 0 1 normal @s
