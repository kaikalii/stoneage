advancement revoke @s only chalcolithic:use_enchanted_book

execute if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run return run function chalcolithic:enchant/use_hand {book_hand:weapon.mainhand,equipment_hand:equipment.offhand}
execute if entity @s[nbt={equipment:{offhand:{id:"minecraft:enchanted_book"}}}] run return run function chalcolithic:enchant/use_hand {book_hand:equipment.offhand,equipment_hand:weapon.mainhand}