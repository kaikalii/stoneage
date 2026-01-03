function chalc:replace_trades/tick
function chalc:milk/tick
function chalc:golem/tick
function chalc:enchant/tick
function chalc:nametag/tick
function chalc:throw/tick
function chalc:darksight/tick
function chalc:imbue/tick

# Make spash bottle have water effect
execute as @e[type=splash_potion,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_name":"Splash Bottle"}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {potion:"water"}