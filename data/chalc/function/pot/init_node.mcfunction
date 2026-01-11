# Orient
execute if block ~ ~ ~ decorated_pot[facing=south] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~ decorated_pot[facing=west] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~ decorated_pot[facing=north] run tp @s ~ ~ ~ 180 0
execute if block ~ ~ ~ decorated_pot[facing=east] run tp @s ~ ~ ~ 270 0

# Count number of bricks vs non-bricks to determine cost
scoreboard players set #non_bricks chalc 4 
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[0]
execute if data storage chalc:macro {sherd:"minecraft:brick"} run scoreboard players remove #non_bricks chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[1]
execute if data storage chalc:macro {sherd:"minecraft:brick"} run scoreboard players remove #non_bricks chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[2]
execute if data storage chalc:macro {sherd:"minecraft:brick"} run scoreboard players remove #non_bricks chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[3]
execute if data storage chalc:macro {sherd:"minecraft:brick"} run scoreboard players remove #non_bricks chalc 1
scoreboard players set @s chalc.pot_fuel_time 30
scoreboard players operation @s chalc.pot_fuel_time /= #non_bricks chalc

# Count sherds
function chalc:pot/count_effect {sherd:angler}
function chalc:pot/count_effect {sherd:archer}
function chalc:pot/count_effect {sherd:burn}
function chalc:pot/count_effect {sherd:blade}
function chalc:pot/count_effect {sherd:brewer}
function chalc:pot/count_effect {sherd:danger}
function chalc:pot/count_effect {sherd:explorer}
function chalc:pot/count_effect {sherd:flow}
function chalc:pot/count_effect {sherd:friend}
function chalc:pot/count_effect {sherd:guster}
function chalc:pot/count_effect {sherd:heart}
function chalc:pot/count_effect {sherd:heartbreak}
function chalc:pot/count_effect {sherd:howl}
function chalc:pot/count_effect {sherd:miner}
function chalc:pot/count_effect {sherd:mourner}
function chalc:pot/count_effect {sherd:plenty}
function chalc:pot/count_effect {sherd:prize}
function chalc:pot/count_effect {sherd:scrape}
function chalc:pot/count_effect {sherd:sheaf}
function chalc:pot/count_effect {sherd:shelter}
function chalc:pot/count_effect {sherd:skull}
function chalc:pot/count_effect {sherd:snort}

function chalc:pot/consume_fuel
function chalc:pot/update_node_text