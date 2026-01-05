# Equipment must be enchantable
$execute unless items entity @s $(equipment_hand) #enchantable/durability run return run title @s actionbar {"text": "This item is not enchantable", color: aqua}
# Equipment must not be blacklisted
$execute if items entity @s $(equipment_hand) #chalc:not_enchantable run return run title @s actionbar {"text": "You don't know how to enchant this item", color: aqua}
# Cannot use mending on elytra
execute store success score #temp chalc run data get storage chalc:macro enchant.enchantments.minecraft:mending
$execute if score #temp chalc matches 1 if items entity @s $(equipment_hand) elytra run return run title @s actionbar {"text": "The mending magic rejects this item", color: aqua}

$item modify entity @s $(equipment_hand) {function:"set_enchantments",enchantments:$(enchantments)}
$item modify entity @s $(book_hand) {function:"set_count",count:0}
playsound block.enchantment_table.use block
execute positioned ~ ~1.52 ~ run particle minecraft:enchant ^ ^ ^1 0.3 0.3 0.3 0.1 20
advancement grant @s only minecraft:story/enchant_item