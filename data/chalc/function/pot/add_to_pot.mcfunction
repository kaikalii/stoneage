execute store success score #has_sherds chalc run data get block ~ ~ ~ sherds
execute if score #has_sherds chalc matches 0 run return 0

execute unless items block ~ ~ ~ contents #chalc:pot_fuel run return 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function chalc:pot/spawn_node