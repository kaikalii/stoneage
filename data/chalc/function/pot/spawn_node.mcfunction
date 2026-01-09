execute as @e[type=text_display,distance=..0.5,tag=pot_node] run return run function chalc:pot/update_node_text

summon text_display ~ ~ ~ {Tags:["pot_node"],billboard:"vertical",transformation:{translation:[0,1,0],left_rotation:{axis:[1,1,1], angle:0},right_rotation:{axis:[1,1,1],angle:0},scale:[1,1,1]}}
execute as @e[type=text_display,distance=..0.5,tag=pot_node] run function chalc:pot/init_node
