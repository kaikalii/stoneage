advancement revoke @s only chalc:use/raw_material

execute store result score @s chalc.levels run xp query @s levels
execute if score @s chalc.levels matches 0 run return run title @s actionbar {text:"Not enough XP", color:red}

execute if items entity @s weapon.mainhand #chalc:repair_material run return run function chalc:repair/use_hand {material:mainhand,equipment:offhand,equipment_path:"equipment.offhand"}
execute if items entity @s weapon.offhand #chalc:repair_material run return run function chalc:repair/use_hand {material:offhand,equipment:mainhand,equipment_path:"SelectedItem"}