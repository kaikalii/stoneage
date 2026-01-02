scoreboard players set #named_tag chalc 0
function chalcolithic:hitscan {f:"if block ~ ~ ~ #all_signs run return run function chalcolithic:nametag/get_name"}
execute if score #named_tag chalc = #0 chalc run function chalcolithic:nametag/use_hand {tag_hand_path:SelectedItem,equipment_hand_path:equipment.offhand,tag_hand:mainhand,equipment_hand:offhand}