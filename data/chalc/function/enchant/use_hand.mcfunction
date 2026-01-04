execute store success score #temp chalc run data get entity @s SelectedItem
execute if score #temp chalc matches 0 run return run title @s actionbar {"text": "An item in the mainhand is required", color: red}
execute store success score #temp chalc run data get entity @s equipment.offhand
execute if score #temp chalc matches 0 run return run title @s actionbar {"text": "An item in the offhand is required", color: red}

$data modify storage chalc:macro enchant.enchantments set from entity @s $(book_hand_path).components.minecraft:stored_enchantments
$data modify storage chalc:macro enchant merge value {book_hand:$(book_hand),equipment_hand:$(equipment_hand)}
function chalc:enchant/enchant_hand with storage chalc:macro enchant