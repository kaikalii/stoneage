summon marker ~ ~ ~ {Tags:["enchantment_node"]}
execute if block ~ ~ ~ #air run setblock ~ ~ ~ light[level=7]
execute if block ~ ~ ~ water run setblock ~ ~ ~ light[level=7,waterlogged=true]
scoreboard players set @n[type=marker] chalc.node_timer 24000