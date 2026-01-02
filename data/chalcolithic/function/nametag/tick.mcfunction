# Make nametag consumable

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] run function chalcolithic:nametag/make_useable
