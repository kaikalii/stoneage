advancement revoke @s only chalcolithic:use_nametag
execute if entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] run function chalcolithic:nametag/use_mainhand
execute if entity @s[nbt={equipment:{offhand:{id:"minecraft:name_tag"}}}] run function chalcolithic:nametag/use_offhand
