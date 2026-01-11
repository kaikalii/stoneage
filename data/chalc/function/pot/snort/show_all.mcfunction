scoreboard players set #showed_direction chalc 0
# execute if data entity @s data.angler run function chalc:pot/snort/show_monument
# execute if data entity @s data.archer run function chalc:pot/snort/show_jungle_pyramid
execute if data entity @s data.arms_up run function chalc:pot/snort/show_end_city
execute if data entity @s data.explorer run function chalc:pot/snort/show_shipwreck
execute if data entity @s data.brewer run function chalc:pot/snort/show_fortress
execute if data entity @s data.danger run function chalc:pot/snort/show_desert_pyramid
execute if data entity @s data.friend run function chalc:pot/snort/show_village
# execute if data entity @s data.guster run function chalc:pot/snort/show_trial_chambers
execute if data entity @s data.heartbreak run function chalc:pot/snort/show_cold_ocean_ruins
execute if data entity @s data.mourner run function chalc:pot/snort/show_ancient_city
execute if data entity @s data.plenty run function chalc:pot/snort/show_bastion_remnant
execute if data entity @s data.sheaf run function chalc:pot/snort/show_warm_ocean_ruins

execute if score #showed_direction chalc matches 0 run function chalc:pot/snort/show_trail_ruins