execute if score @s chalc.pot_timer > @s chalc.pot_fuel_time run return run data modify entity @s text set value ""

execute if items block ~ ~ ~ contents raw_iron_block store result score #time_left chalc run data get block ~ ~ ~ item{id:"minecraft:raw_iron_block"}.count
execute if items block ~ ~ ~ contents iron_ingot store result score #time_left chalc run data get block ~ ~ ~ item{id:"minecraft:iron_ingot"}.count
scoreboard players operation #time_left chalc *= @s chalc.pot_fuel_time
scoreboard players operation #time_left chalc += @s chalc.pot_fuel_time
scoreboard players operation #time_left chalc -= @s chalc.pot_timer
execute store result storage chalc:macro text int 1 run scoreboard players get #time_left chalc
function chalc:pot/set_node_text with storage chalc:macro