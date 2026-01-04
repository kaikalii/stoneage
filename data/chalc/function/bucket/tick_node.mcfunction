scoreboard players remove @s chalc.fluid_timer 1
execute unless score @s chalc.fluid_timer matches ..0 run return run function chalc:do_nothing

$execute if block ~ ~ ~ $(fluid)[level=0] run setblock ~ ~ ~ $(fluid)[level=15]
execute if block ~ ~ ~ obsidian run advancement grant @p only story/form_obsidian
kill @s