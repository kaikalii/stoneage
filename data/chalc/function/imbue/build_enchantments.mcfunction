execute if score #tries chalc = #0 chalc run return run function chalc:do_nothing
scoreboard players remove #tries chalc 1

execute store result score @s chalc.levels run xp query @s levels
data remove storage chalc:imbue enchantments
scoreboard players set #cost chalc 0

function chalc:imbue/biome1 {enchant:aqua_affinity, biome:"#is_river"}
# TODO: BoA
function chalc:imbue/biome4 {enchant:blast_protection, biome:"#is_badlands"}
function chalc:imbue/biome4 {enchant:breach, biome:"dark_forest"}
# TODO: Channeling
# TODO: Density
function chalc:imbue/biome3 {enchant:depth_strider, biome:"#is_deep_ocean"}
function chalc:imbue/add_if5 {enchant:efficiency, f:"if score @s chalc.y <= #deepslate chalc unless biome ~ ~ ~ #chalc:underground"}
function chalc:imbue/biome4 {enchant:feather_falling, biome:"#chalc:feather_falling"}
function chalc:imbue/biome2 {enchant:fire_aspect, biome:"#is_svannah"}
function chalc:imbue/biome4 {enchant:fire_protection, biome:"basalt_delta"}
function chalc:imbue/biome1 {enchant:flame, biome:"crimson_forest"}
function chalc:imbue/biome3med {enchant:fortune, biome:"#is_beach"}
function chalc:imbue/biome2 {enchant:frost_walker, biome:"frozen_river"}
function chalc:imbue/biome5 {enchant:impaling, biome:"chalc:impaling"}
function chalc:imbue/biome1 {enchant:infinity, biome:"small_end_islands"}
function chalc:imbue/biome2 {enchant:knockback, biome:"#chalc:knockback"}
function chalc:imbue/biome3med {enchant:looting, biome:"end_highlands"}
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
# TODO: Riptide
function chalc:imbue/biome5 {enchant:sharpness, biome:"#chalc:sharpness"}
function chalc:imbue/biome1 {enchant:silk_touch, biome:"warped_forest"}
function chalc:imbue/biome5 {enchant:smite, biome:"#chalc:smite"}
function chalc:imbue/biome5 {enchant:sweeping_edge, biome:"#chalc:sweeping_edge"}
function chalc:imbue/biome5 {enchant:thorns, biome:"#is_jungle"}
function chalc:imbue/add_if3 {enchant:unbreaking, f:"if score @s chalc.y >= #deepslate chalc if score @s chalc.y < #sea_level chalc unless biome ~ ~ ~ #chalc:underground"}

execute if score #cost chalc > @s chalc.levels run return run function chalc:imbue/build_enchantments
execute store result storage chalc:imbue cost int -1 run scoreboard players get #cost chalc
execute if score #cost chalc > #0 chalc run return run function chalc:imbue/enchant_book with storage chalc:imbue
function chalc:imbue/build_enchantments