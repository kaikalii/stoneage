setblock ~ ~ ~ air
$execute store success score #grew_tree chalc run place feature $(tree) ~ ~ ~
$execute if score #grew_tree chalc matches 0 run setblock ~ ~ ~ $(tree)_sapling[stage=1]