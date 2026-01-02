function chalcolithic:replace_trades/tick
function chalcolithic:milk/tick
function chalcolithic:golem/tick
function chalcolithic:enchant/tick
function chalcolithic:nametag/tick
function chalcolithic:throw/tick
function chalcolithic:darksight/tick

# Make spash bottle have water effect
execute as @e[type=splash_potion,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_name":"Splash Bottle"}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {potion:"water"}