scoreboard players set #temp chalc 0
execute as @n[type=marker,nbt={CustomName:"Enchantment Node"},distance=..144] run scoreboard players set #temp chalc 1
execute if score #temp chalc = #1 chalc run return run function chalc:imbue/too_close
function chalc:imbue/spawn_node