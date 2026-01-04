$execute if score @s chalc.levels >= #$(req) chalc.level_req if function chalc:random/$(chance) $(f) run function chalc:imbue/add_enchantment {enchant:$(enchant), req:$(req), level:$(level)}
