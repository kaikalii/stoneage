execute unless block ~ ~-1 ~ clay run return run function stoneage:do_nothing
execute unless block ~ ~-1 ~1 clay run return run function stoneage:do_nothing
execute unless block ~ ~-1 ~-1 clay run return run function stoneage:do_nothing
execute unless block ~ ~-2 ~ clay run return run function stoneage:do_nothing

execute unless block ~1 ~-1 ~ mud run return run function stoneage:do_nothing
execute unless block ~-1 ~-1 ~ mud run return run function stoneage:do_nothing

setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
setblock ~ ~-1 ~1 mud
setblock ~ ~-1 ~-1 mud
setblock ~ ~-2 ~ mud

function stoneage:golem/make