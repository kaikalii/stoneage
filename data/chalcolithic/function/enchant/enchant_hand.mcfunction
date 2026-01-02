$execute unless items entity @s $(equipment_hand) #enchantable/durability run return run function chalcolithic:do_nothing
$item modify entity @s $(equipment_hand) {function:"set_enchantments",enchantments:$(enchantments)}
$item modify entity @s $(book_hand) {function:"set_count",count:0}
playsound block.enchantment_table.use block
execute positioned ~ ~1.52 ~ run particle minecraft:enchant ^ ^ ^1 0.3 0.3 0.3 0.1 20