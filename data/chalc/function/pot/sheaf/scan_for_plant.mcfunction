execute if score #tries chalc matches 20.. run return 0

$execute store result storage chalc:macro grow.dx int 1 run random value -$(range)..$(range)
execute store result storage chalc:macro grow.dy int 1 run random value -1..1
$execute store result storage chalc:macro grow.dz int 1 run random value -$(range)..$(range)

scoreboard players add #tries chalc 1

execute store result score #grew_plant chalc run function chalc:pot/sheaf/grow_plant_at with storage chalc:macro grow
$execute if score #grew_plant chalc matches 0 run function chalc:pot/sheaf/scan_for_plant {range:$(range)}