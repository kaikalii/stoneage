$data modify storage chalcolithic:macro enchantments set from entity @s $(book_hand).components.minecraft:stored_enchantments
$data modify storage chalcolithic:macro enchantments merge value {book_hand:$(book_hand),equipment_hand:$(equipment_hand)}
function chalcolithic:enchant/enchant_hand with storage chalcolithic:macro