$execute store success score #temp chalc run data get entity @s $(equipment_hand_path)
execute if score #temp chalc = #0 chalc run return run function chalcolithic:do_nothing
$item modify entity @s weapon.$(equipment_hand) {function:"set_components",components:{"minecraft:custom_name":"$(name)","minecraft:enchantment_glint_override":1b}}
$item modify entity @s weapon.$(tag_hand) {function:"set_count",count:0}
playsound ui.cartography_table.take_result block
