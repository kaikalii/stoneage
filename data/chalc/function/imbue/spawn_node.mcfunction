summon marker ~ ~ ~ {CustomName:"Enchantment Node"}
execute if block ~ ~ ~ #air run setblock ~ ~ ~ light[level=7]
execute if block ~ ~ ~ water run setblock ~ ~ ~ light[level=7,waterlogged=true]
scoreboard players set @n[type=marker] chalc.timer 24000