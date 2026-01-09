$execute as @e[type=creeper,tag=!nullified,distance=..$(range)] at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 1
$execute as @e[type=creeper,tag=!nullified,distance=..$(range)] run attribute @s follow_range base set 0
$execute as @e[type=creeper,tag=!nullified,distance=..$(range)] run data modify entity @s ExplosionRadius set value 1
$execute as @e[type=creeper,tag=!nullified,distance=..$(range)] run tag @s add nullified
