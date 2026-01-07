execute unless block ~ ~ ~ #trapdoors[half=top] run return run kill @s

execute unless block ~ ~ ~ #trapdoors[open=false] run return 0

execute if block ~ ~1 ~ #chalc:container run return run function chalc:drain/drain_container
execute if block ~ ~1 ~ #chalc:furnace run return run function chalc:drain/drain_furnace
