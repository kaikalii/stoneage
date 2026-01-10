execute as @e[type=creeper,tag=nullified] run function chalc:pot/danger/unnullify_creeper
execute as @a[tag=!should_upgrade] at @s run function chalc:pot/skull/downgrade_gear
execute as @a[tag=should_upgrade] run tag @s remove should_upgrade