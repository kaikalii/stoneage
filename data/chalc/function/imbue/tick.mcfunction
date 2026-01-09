execute as @e[type=marker,tag=enchantment_node] at @s run function chalc:imbue/tick_node

scoreboard players remove @a chalc.imbue_timer 1
execute as @a if score @s chalc.imbue_timer matches ..0 run scoreboard players set @s chalc.imbue_timer 0