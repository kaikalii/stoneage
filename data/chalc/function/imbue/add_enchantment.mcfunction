$execute store success score #has_enchant chalc run data get storage chalc:imbue enchantments.$(enchant)
$execute store result score #enchant_level chalc run data get storage chalc:imbue enchantments.$(enchant)
execute if score #has_enchant chalc = #1 chalc run scoreboard players operation #cost chalc -= #enchant_level chalc
$data modify storage chalc:imbue enchantments.$(enchant) set value $(level)
$scoreboard players operation #cost chalc += #$(level) chalc
