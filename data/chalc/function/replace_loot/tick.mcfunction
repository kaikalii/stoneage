execute as @e[type=marker,tag=loot_replacer] at @s run function chalc:replace_loot/replace
execute as @e[type=marker,tag=loot_replacer] run kill @s
execute as @e[type=item,nbt={Age:0s}] at @s unless data entity @s Thrower run function chalc:replace_loot/replace