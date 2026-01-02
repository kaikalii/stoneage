execute unless items entity @s weapon.mainhand #enchantable/durability run return run function chalcolithic:do_nothing
$item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:$(enchantments)}
item modify entity @s weapon.offhand {function:"set_count",count:0}
function chalcolithic:enchant/effect