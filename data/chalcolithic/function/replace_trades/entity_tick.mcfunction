function chalcolithic:replace_trades/from_to {kind:buy,from:iron_ingot,to:copper_ingot}

# Armorsmith
function chalcolithic:replace_trades/from_to {kind:buy,from:lava_bucket,to:raw_iron_block}
function chalcolithic:replace_trades/with_count {kind:sell,from:iron_helmet,to:raw_copper,count:5}
function chalcolithic:replace_trades/from_to {kind:sell,from:iron_chestplate,to:raw_copper_block}
function chalcolithic:replace_trades/with_count {kind:sell,from:iron_leggings,to:raw_copper,count:7}
function chalcolithic:replace_trades/with_count {kind:sell,from:iron_boots,to:raw_copper,count:4}
function chalcolithic:replace_trades/from_to {kind:sell,from:chainmail_helmet,to:copper_helmet}
function chalcolithic:replace_trades/from_to {kind:sell,from:chainmail_chestplate,to:copper_chestplate}
function chalcolithic:replace_trades/from_to {kind:sell,from:chainmail_leggings,to:copper_leggings}
function chalcolithic:replace_trades/from_to {kind:sell,from:chainmail_boots,to:copper_boots}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_helmet,to:copper_helmet}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_chestplate,to:copper_chestplate}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_leggings,to:copper_leggings}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_boots,to:copper_boots}

# Fisherman
function chalcolithic:replace_trades/from_to {kind:sell,from:cod_bucket,to:fishing_rod}

# Toolsmith
function chalcolithic:replace_trades/from_to {kind:sell,from:iron_pickaxe,to:stone_pickaxe}
function chalcolithic:replace_trades/from_to {kind:sell,from:iron_axe,to:stone_axe}
function chalcolithic:replace_trades/from_to {kind:sell,from:iron_shovel,to:stone_shovel}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_pickaxe,to:copper_pickaxe}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_axe,to:copper_axe}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_shovel,to:copper_shovel}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_hoe,to:copper_hoe}

# Weaponsmith
function chalcolithic:replace_trades/from_to {kind:sell,from:iron_sword,to:stone_sword}
function chalcolithic:replace_trades/from_to {kind:sell,from:diamond_sword,to:copper_sword}

# Wandering Trader
execute if data entity @s Offers.Recipes[{"buy":{id:"minecraft:water_bucket"}}] run data modify entity @s Offers.Recipes[{"buy":{id:"minecraft:water_bucket"}}].buy merge value {id:"minecraft:potion",components:{potion_contents:"water"}}
function chalcolithic:replace_trades/with_count {kind:sell,from:tropical_fish_bucket,to:tropical_fish,count:4}
function chalcolithic:replace_trades/with_count {kind:sell,from:pufferfish_bucket,to:pufferfish,count:4}
