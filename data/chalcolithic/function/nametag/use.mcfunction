advancement revoke @s only chalcolithic:use_nametag

execute if entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] run function chalcolithic:hitscan {f:"if block ~ ~ ~ #all_signs run return run function chalcolithic:nametag/get_name"}
