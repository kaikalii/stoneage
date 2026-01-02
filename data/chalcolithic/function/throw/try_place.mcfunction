# Item must have a thrower
execute store success score #temp chalc run data get entity @s Thrower
execute if score #temp chalc = #0 chalc run return run function chalcolithic:do_nothing
# Can't be transparent below
execute if block ~ ~-1 ~ #chalcolithic:transparent run return run function chalcolithic:do_nothing
# Special cases
execute as @e[nbt={Item:{id:"minecraft:redstone"}}] run return run function chalcolithic:throw/place {CustomName:"redstone_wire"}

data modify entity @s CustomName set from entity @s Item.id
function chalcolithic:throw/place with entity @s
