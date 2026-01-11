execute store result score #flow chalc run data get entity @s data.flow
execute unless score #flow chalc matches 1.. run return 0

execute if block ~ ~ ~ decorated_pot[waterlogged=false] run tag @s add spawned_water
execute if block ~ ~ ~ decorated_pot[waterlogged=false] run setblock ~ ~ ~ decorated_pot[waterlogged=true]