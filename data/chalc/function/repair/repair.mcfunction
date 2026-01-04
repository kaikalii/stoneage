# Repair
$item modify entity @s weapon.$(equipment) {function:"set_components", components:{damage:$(damage)}}
# Use XP
xp add @s -1 levels
# Use material
$item modify entity @s weapon.$(material) {function:"set_count", count:-1, add: true}
# Reset timer
scoreboard players set @s chalc.repair_timer 0