execute as @e[type=marker,distance=..0.5,nbt={CustomName:"Drain Node"}] run return 0
say spawn drain node
summon marker ~ ~ ~ {CustomName:"Drain Node"}