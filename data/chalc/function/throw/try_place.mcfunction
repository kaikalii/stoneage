# Item must have a thrower
execute store success score #temp chalc run data get entity @s Thrower
execute if score #temp chalc matches 0 run return 0
# Can't be transparent below
execute if block ~ ~-1 ~ #chalc:transparent run return 0
# Special cases
execute as @e[nbt={Item:{id:"minecraft:redstone"}}] run return run function chalc:throw/place {CustomName:"redstone_wire"}

data modify entity @s CustomName set from entity @s Item.id
function chalc:throw/place with entity @s
