# 2D Triangulation

# tellraw @a {text:"r1: ",extra:[{score:{name:"#r1",objective:chalc}}]}
# tellraw @a {text:"r2: ",extra:[{score:{name:"#r2",objective:chalc}}]}
# tellraw @a {text:"r3: ",extra:[{score:{name:"#r3",objective:chalc}}]}

execute store result score #x1 chalc run data get entity @s Pos[0]
execute store result score #z1 chalc run data get entity @s Pos[2]

scoreboard players set #x2 chalc 10
scoreboard players operation #x2 chalc += #x1 chalc
scoreboard players operation #z2 chalc = #z1 chalc

scoreboard players operation #x3 chalc = #x2 chalc
scoreboard players set #z3 chalc 10
scoreboard players operation #z3 chalc += #z2 chalc

function chalc:pot/snort/square {t:x1}
function chalc:pot/snort/square {t:x2}
function chalc:pot/snort/square {t:x3}
function chalc:pot/snort/square {t:z1}
function chalc:pot/snort/square {t:z2}
function chalc:pot/snort/square {t:z3}
function chalc:pot/snort/square {t:r1}
function chalc:pot/snort/square {t:r2}
function chalc:pot/snort/square {t:r3}

scoreboard players set #x chalc 0
scoreboard players operation #x chalc += #x2_2 chalc
scoreboard players operation #x chalc -= #x1_2 chalc
scoreboard players operation #x chalc += #r1_2 chalc
scoreboard players operation #x chalc -= #r2_2 chalc
scoreboard players operation #x chalc /= #20 chalc

scoreboard players set #z chalc 0
scoreboard players operation #z chalc += #z3_2 chalc
scoreboard players operation #z chalc -= #z2_2 chalc
scoreboard players operation #z chalc += #r2_2 chalc
scoreboard players operation #z chalc -= #r3_2 chalc
scoreboard players operation #z chalc /= #20 chalc

# tellraw @a {text:"TT x: ",extra:[{score:{name:"#x",objective:chalc}}]}
# tellraw @a {text:"TT z: ",extra:[{score:{name:"#z",objective:chalc}}]}

execute store result storage chalc:structure x int 1 run scoreboard players get #x chalc
execute store result storage chalc:structure z int 1 run scoreboard players get #z chalc