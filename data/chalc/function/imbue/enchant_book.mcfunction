execute unless function chalc:imbue/try_spawn_node run return run function chalc:do_nothing
clear @s book[custom_data={enchantable:1b}] 1
$give @s enchanted_book[stored_enchantments=$(enchantments)]
playsound block.enchantment_table.use block
$xp add @s $(cost) levels