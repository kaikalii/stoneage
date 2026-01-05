execute unless block ~ ~-1 ~ clay run return 0
execute unless block ~1 ~-1 ~ clay run return 0
execute unless block ~-1 ~-1 ~ clay run return 0
execute unless block ~ ~-2 ~ clay run return 0

execute unless block ~ ~-1 ~1 mud run return 0
execute unless block ~ ~-1 ~-1 mud run return 0

setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
setblock ~1 ~-1 ~ mud
setblock ~-1 ~-1 ~ mud
setblock ~ ~-2 ~ mud

function chalc:golem/make