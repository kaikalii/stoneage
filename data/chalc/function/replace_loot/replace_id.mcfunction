$execute if data block ~ ~ ~ Items[{id:"minecraft:$(from)"}] run data modify block ~ ~ ~ Items[{id:"minecraft:$(from)"}].id set value $(to)
$execute if items entity @s contents $(from) run data modify entity @s Item.id set value $(to)
