execute store result storage chalc:macro node.size double 0.00003 run scoreboard players get @s chalc.timer
execute store result storage chalc:macro node.count int 0.0001 run scoreboard players get @s chalc.timer
function chalc:imbue/effect with storage chalc:macro node

scoreboard players remove @s chalc.timer 1
execute if score @s chalc.timer <= #0 chalc if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute if score @s chalc.timer <= #0 chalc if block ~ ~ ~ light run setblock ~ ~ ~ air
execute if score @s chalc.timer <= #0 chalc run kill @s