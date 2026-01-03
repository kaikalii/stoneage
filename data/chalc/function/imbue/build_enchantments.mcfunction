execute if score #tries chalc = #0 chalc run return run function chalc:do_nothing
scoreboard players remove #tries chalc 1

execute store result score @s chalc.levels run xp query @s levels
data remove storage chalc:imbue enchantments
scoreboard players set #cost chalc 0

function chalc:imbue/biome {biome:"#is_river", req:low, chance:2, enchant:aqua_affinity, level:1}


execute if score #cost chalc > @s chalc.levels run return run function chalc:imbue/build_enchantments
execute store result storage chalc:imbue cost int -1 run scoreboard players get #cost chalc
execute if score #cost chalc > #0 chalc run return run function chalc:imbue/enchant_book with storage chalc:imbue
function chalc:imbue/build_enchantments