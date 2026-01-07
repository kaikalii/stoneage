# Let copper golems pick things up
execute as @e[type=copper_golem] run data modify entity @s CanPickUpLoot set value 1b
# Teleport items to copper golems
execute as @e[type=copper_golem] unless items entity @s weapon.mainhand * at @s as @n[type=item,distance=..2,nbt={PickupDelay:0s}] run tp ~ ~ ~
