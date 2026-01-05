
execute if score #tries chalc matches 0 if score #too_expensive chalc matches 1 run return run function chalc:imbue/not_enough_xp
execute if score #tries chalc matches 0 run return run function chalc:do_nothing
scoreboard players remove #tries chalc 1

execute store result score @s chalc.levels run xp query @s levels
execute if score @s chalc.levels matches 0 run return run function chalc:imbue/not_enough_xp

data remove storage chalc:imbue enchantments
scoreboard players set #cost chalc 0

function chalc:imbue/add_if1 {enchant:aqua_affinity, biome:"if predicate chalc:enchant/aqua_affinity"}
function chalc:imbue/add_if5 {enchant:bane_of_arthropods, f: "if predicate chalc:enchant/bane_of_arthropods"}
function chalc:imbue/biome4 {enchant:blast_protection, biome:"#is_badlands"}
function chalc:imbue/biome4 {enchant:breach, biome:"dark_forest"}
function chalc:imbue/add_if1 {enchant:channeling, f:"if predicate chalc:enchant/channeling"}
# TODO: Density
function chalc:imbue/biome3 {enchant:depth_strider, biome:"#is_deep_ocean"}
function chalc:imbue/add_if5 {enchant:efficiency, f:"if dimension overworld unless block ~ ~ ~ water if score @s chalc.y matches ..0 unless biome ~ ~ ~ #chalc:underground"}
function chalc:imbue/biome5 {enchant:efficiency, biome:"#efficiency"}
function chalc:imbue/biome4 {enchant:feather_falling, biome:"#chalc:feather_falling"}
function chalc:imbue/biome2 {enchant:fire_aspect, biome:"#is_svannah"}
function chalc:imbue/biome4 {enchant:fire_protection, biome:"basalt_deltas"}
function chalc:imbue/biome1 {enchant:flame, biome:"crimson_forest"}
function chalc:imbue/biome3med {enchant:fortune, biome:"#is_beach"}
function chalc:imbue/biome2med {enchant:frost_walker, biome:"frozen_river"}
function chalc:imbue/biome5 {enchant:impaling, biome:"chalc:impaling"}
function chalc:imbue/biome1 {enchant:infinity, biome:"small_end_islands"}
function chalc:imbue/biome2 {enchant:knockback, biome:"#chalc:knockback"}
function chalc:imbue/add_if3med {enchant:looting, f: "if predicate chalc:enchant/looting"}
function chalc:imbue/biome3med {enchant:loyalty, biome:"warm_ocean"}
function chalc:imbue/biome3 {enchant:luck_of_the_sea, biome:"mushroom_fields"}
function chalc:imbue/biome3 {enchant:lunge, biome:"desert"}
function chalc:imbue/biome3 {enchant:lure, biome:"lush_caves"}
function chalc:imbue/biome1 {enchant:multishot, biome:"bamboo_jungle"}
function chalc:imbue/biome4 {enchant:piercing, biome:"#chalc:piercing"}
function chalc:imbue/biome5 {enchant:power, biome:"#chalc:power"}
function chalc:imbue/biome4 {enchant:projectile_protection, biome:"#is_forest"}
function chalc:imbue/biome4 {enchant:protection, biome:"#chalc:protection"}
function chalc:imbue/biome3 {enchant:quick_charge, biome:"the_end"}
function chalc:imbue/biome3 {enchant:respiration, biome:"#is_ocean"}
function chalc:imbue/add_if1 {enchant:riptide, f:"if predicate chalc:enchant/riptide"}
function chalc:imbue/biome5 {enchant:sharpness, biome:"#chalc:sharpness"}
function chalc:imbue/biome1 {enchant:silk_touch, biome:"warped_forest"}
function chalc:imbue/biome5 {enchant:smite, biome:"#chalc:smite"}
function chalc:imbue/biome5 {enchant:sweeping_edge, biome:"#chalc:sweeping_edge"}
function chalc:imbue/biome5 {enchant:thorns, biome:"#is_jungle"}
function chalc:imbue/add_if3 {enchant:unbreaking, f:"if dimension overworld unless block ~ ~ ~ water if score @s chalc.y matches 0..62 unless biome ~ ~ ~ #chalc:underground"}
function chalc:imbue/biome3 {enchant:unbreaking, biome:"stony_shore"}

execute if score #cost chalc > @s chalc.levels run scoreboard players set #too_expensive chalc 1
execute if score #cost chalc matches 0 run scoreboard players set #too_expensive chalc 1
execute if score #cost chalc > @s chalc.levels run return run function chalc:imbue/build_enchantments
execute store result storage chalc:imbue cost int -1 run scoreboard players get #cost chalc
execute if score #cost chalc matches 1.. run return run function chalc:imbue/enchant_book with storage chalc:imbue
function chalc:imbue/build_enchantments