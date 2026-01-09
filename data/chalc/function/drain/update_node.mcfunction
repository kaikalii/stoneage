execute unless block ~ ~ ~ #chalc:copper_trapdoors run return run kill @s
execute unless predicate chalc:drainable_nearby run return run kill @s

execute if block ~ ~ ~ #chalc:copper_trapdoors[half=top,open=false] positioned ~ ~1 ~ run return run function chalc:drain/drain
execute if block ~ ~ ~ #chalc:copper_trapdoors[open=true,facing=east] positioned ~-1 ~ ~ run return run function chalc:drain/drain
execute if block ~ ~ ~ #chalc:copper_trapdoors[open=true,facing=west] positioned ~1 ~ ~ run return run function chalc:drain/drain
execute if block ~ ~ ~ #chalc:copper_trapdoors[open=true,facing=south] positioned ~ ~ ~-1 run return run function chalc:drain/drain
execute if block ~ ~ ~ #chalc:copper_trapdoors[open=true,facing=north] positioned ~ ~ ~1 run return run function chalc:drain/drain
