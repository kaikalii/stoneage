# Save existing items
data modify entity @s data.OldItems set from block ~ ~ ~ Items

# Insert loot
$loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:"$(id)",functions:[{function:set_count,count:1}, {function:set_components,components:$(components)}]}]}]}

# Check if contents changed
execute store result score #items_changed chalc run function chalc:fill/items_changed with block ~ ~ ~
execute if score #items_changed chalc matches 0 run return 0
# Remove an item from the stack if the contents of the container changed
item modify entity @s contents {function:"set_count",count:-1,add:true}

# Give advancement
execute if items block ~ ~ ~ container.* #chalc:props_open_barrel run advancement grant @p only chalc:adventure/fill_barrel