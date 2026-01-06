# Grant advancements
$execute if items entity @s weapon.$(equipment) *[!enchantments={}] run advancement grant @s only chalc:story/repair_item
$execute if items entity @s weapon.$(equipment) wolf_armor if score #0 chalc matches $(damage) run advancement grant @s only husbandry/repair_wolf_armor
# Repair
$item modify entity @s weapon.$(equipment) {function:"set_components", components:{damage:$(damage)}}
# Use XP
xp add @s -1 levels
# Use material
$item modify entity @s weapon.$(material) {function:"set_count", count:-1, add: true}
# Reset timer
scoreboard players set @s chalc.repair_timer 0