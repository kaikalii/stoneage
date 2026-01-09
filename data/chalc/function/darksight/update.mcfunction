execute as @a[nbt={equipment:{head:{components:{"minecraft:enchantments":{"chalc:darksight":1}}}}}] at @s align xyz positioned ~0.5 ~ ~0.5 run function chalc:darksight/show_darkness

schedule function chalc:darksight/update 4t