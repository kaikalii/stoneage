$execute unless items entity @s $(slot) $(from)_$(item) run return 0
$data modify storage chalc:macro upgrade.components set from entity @s $(path).components
execute store result score #damage chalc run data get storage chalc:macro upgrade.components."minecraft:damage"
$scoreboard players operation #damage chalc *= #$(to_dur) chalc
$scoreboard players operation #damage chalc /= #$(from_dur) chalc
execute store result storage chalc:macro upgrade.components."minecraft:damage" int 1 run scoreboard players get #damage chalc
$data modify storage chalc:macro upgrade merge value {slot:$(slot),item:$(item),to:$(to)}
function chalc:pot/skull/upgrade_slot_to with storage chalc:macro upgrade