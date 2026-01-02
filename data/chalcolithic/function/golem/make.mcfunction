summon iron_golem ~ ~-2.5 ~
execute as @n[type=iron_golem,distance=..5] at @s run tp @s ~ ~ ~ facing entity @p eyes
data modify entity @n[type=iron_golem,distance=..5] Motion set value [0,0.5,0]
playsound block.mud.break block @a ~ ~ ~ 1 0.5
advancement grant @p only adventure/summon_iron_golem