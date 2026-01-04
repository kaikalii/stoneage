advancement revoke @s only chalc:use/nametag
execute if entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] run function chalc:nametag/use_mainhand
execute if entity @s[nbt={equipment:{offhand:{id:"minecraft:name_tag"}}}] run function chalc:nametag/use_offhand
