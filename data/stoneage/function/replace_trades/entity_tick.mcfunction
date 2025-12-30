function stoneage:replace_trades/from_to {kind:buy,from:iron_ingot,to:raw_iron}

# Armorsmith
function stoneage:replace_trades/from_to {kind:buy,from:lava_bucket,to:raw_iron_block}
function stoneage:replace_trades/with_count {kind:sell,from:iron_helmet,to:raw_iron,count:5}
function stoneage:replace_trades/with_count {kind:sell,from:iron_chestplate,to:raw_iron,count:8}
function stoneage:replace_trades/with_count {kind:sell,from:iron_leggings,to:raw_iron,count:7}
function stoneage:replace_trades/with_count {kind:sell,from:iron_boots,to:raw_iron,count:4}
function stoneage:replace_trades/with_count {kind:sell,from:chainmail_helmet,to:raw_iron,count:5}
function stoneage:replace_trades/with_count {kind:sell,from:chainmail_chestplate,to:raw_iron,count:8}
function stoneage:replace_trades/with_count {kind:sell,from:chainmail_leggings,to:raw_iron,count:7}
function stoneage:replace_trades/with_count {kind:sell,from:chainmail_boots,to:raw_iron,count:4}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_helmet,to:golden_helmet}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_chestplate,to:golden_chestplate}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_leggings,to:golden_leggings}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_boots,to:golden_boots}

# Fisherman
function stoneage:replace_trades/from_to {kind:sell,from:cod_bucket,to:fishing_rod}

# Toolsmith
function stoneage:replace_trades/from_to {kind:sell,from:iron_pickaxe,to:stone_pickaxe}
function stoneage:replace_trades/from_to {kind:sell,from:iron_axe,to:stone_axe}
function stoneage:replace_trades/from_to {kind:sell,from:iron_shovel,to:stone_shovel}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_pickaxe,to:stone_pickaxe}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_axe,to:stone_axe}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_shovel,to:stone_shovel}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_hoe,to:stone_hoe}

# Weaponsmith
function stoneage:replace_trades/from_to {kind:sell,from:iron_sword,to:stone_sword}
function stoneage:replace_trades/from_to {kind:sell,from:diamond_sword,to:stone_sword}

# Wandering Trader
execute if data entity @s Offers.Recipes[{"buy":{id:"minecraft:water_bucket"}}] run data modify entity @s Offers.Recipes[{"buy":{id:"minecraft:water_bucket"}}].buy merge value {id:"minecraft:potion",components:{potion_contents:"water"}}
function stoneage:replace_trades/with_count {kind:sell,from:tropical_fish_bucket,to:tropical_fish,count:4}
function stoneage:replace_trades/with_count {kind:sell,from:pufferfish_bucket,to:pufferfish,count:4}
