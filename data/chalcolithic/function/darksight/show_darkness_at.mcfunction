execute store result score #temp chalc run random value 0..2
execute if score #temp chalc > #0 chalc run return run function chalcolithic:do_nothing
execute unless block ~ ~ ~ air run return run function chalcolithic:do_nothing
execute if block ~ ~-1 ~ #chalcolithic:prevents_spawns run return run function chalcolithic:do_nothing
execute if block ~ ~-1 ~ #slabs[type=bottom] run return run function chalcolithic:do_nothing
execute if block ~ ~-1 ~ #stairs[half=bottom] run return run function chalcolithic:do_nothing
execute if predicate chalcolithic:dark_inside run return run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0 0 0 0 1
execute if predicate chalcolithic:dark_outside run particle dust{color:[0,0,0.3],scale:1} ~ ~ ~ 0 0 0 0 1
