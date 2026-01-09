setblock ~ ~ ~ lava
execute unless dimension the_nether run return run function chalc:bucket/mark {fluid:lava,time:31}
function chalc:bucket/mark {fluid:lava,time:15}