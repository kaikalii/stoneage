tag @s add should_upgrade
execute unless items entity @s weapon.* #chalc:golden unless items entity @s armor.* #chalc:golden unless items entity @s hotbar.* #chalc:golden run return 0

function chalc:pot/effect/upgrade_hands {item:axe}
function chalc:pot/effect/upgrade_hands {item:pickaxe}
function chalc:pot/effect/upgrade_hands {item:shovel}
function chalc:pot/effect/upgrade_hands {item:hoe}
function chalc:pot/effect/upgrade_hands {item:sword}
function chalc:pot/effect/upgrade_hands {item:spear}

function chalc:pot/effect/slot {item:helmet,slot:armor.head,path:equipment.head,from:golden,to:netherite,from_dur:77,to_dur:407}
function chalc:pot/effect/slot {item:chestplate,slot:armor.chest,path:equipment.chest,from:golden,to:netherite,from_dur:112,to_dur:592}
function chalc:pot/effect/slot {item:leggings,slot:armor.legs,path:equipment.legs,from:golden,to:netherite,from_dur:105,to_dur:555}
function chalc:pot/effect/slot {item:boots,slot:armor.feet,path:equipment.feet,from:golden,to:netherite,from_dur:91,to_dur:481}