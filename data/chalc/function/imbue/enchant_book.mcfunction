# Spawn node
execute unless function chalc:imbue/try_spawn_node run return run function chalc:do_nothing
# Give advancements
advancement grant @s only chalc:story/enchant_book
execute if items entity @s weapon.mainhand book[custom_data~{max_level:3b}] run advancement grant @s only chalc:story/powerful_book
execute if items entity @s weapon.offhand book[custom_data~{max_level:3b}] run advancement grant @s only chalc:story/powerful_book
execute if items entity @s weapon.mainhand book[custom_data~{max_level:5b}] run advancement grant @s only chalc:nether/infernal_book
execute if items entity @s weapon.offhand book[custom_data~{max_level:5b}] run advancement grant @s only chalc:nether/infernal_book
# Remove enchantable book
clear @s *[custom_data~{enchantable:1b}] 1
# Give enchanted book
$give @s enchanted_book[stored_enchantments=$(enchantments)]
# Play sound
playsound block.enchantment_table.use block
# Use XP
$xp add @s $(cost) levels