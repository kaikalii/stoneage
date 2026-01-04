execute as @a if items entity @s weapon.mainhand #chalc:repair_material run item modify entity @s weapon.mainhand chalc:make_material_usable
execute as @a if items entity @s weapon.offhand #chalc:repair_material run item modify entity @s weapon.offhand chalc:make_material_usable

scoreboard players remove @a chalc.repair_timer 1
execute as @a if score @s chalc.repair_timer matches ..0 run scoreboard players set @s chalc.repair_timer 0