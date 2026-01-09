particle small_flame ~ ~0.65 ~ 0.06 0.06 0.06 0 4
particle white_smoke ~ ~0.7 ~ 0 0 0 0 1
playsound block.smoker.smoke block @a

execute as @s[nbt={data:{archer:1}}] run effect give @e[distance=..20] glowing 2
execute as @s[nbt={data:{archer:2}}] run effect give @e[distance=..40] glowing 2
execute as @s[nbt={data:{archer:3}}] run effect give @e[distance=..60] glowing 2
execute as @s[nbt={data:{archer:4}}] run effect give @e[distance=..80] glowing 2

execute as @s[nbt={data:{blade:1}}] run effect give @a[distance=..10] strength 2
execute as @s[nbt={data:{blade:2}}] run effect give @a[distance=..10] strength 2 1
execute as @s[nbt={data:{blade:3}}] run effect give @a[distance=..10] strength 2 2
execute as @s[nbt={data:{blade:4}}] run effect give @a[distance=..10] strength 2 3

execute as @s[nbt={data:{danger:1}}] run function chalc:pot/effect/nullify_creepers {range:10}
execute as @s[nbt={data:{danger:2}}] run function chalc:pot/effect/nullify_creepers {range:20}
execute as @s[nbt={data:{danger:3}}] run function chalc:pot/effect/nullify_creepers {range:30}
execute as @s[nbt={data:{danger:4}}] run function chalc:pot/effect/nullify_creepers {range:40}

execute as @s[nbt={data:{explorer:1}}] run effect give @a[distance=..10] speed 2
execute as @s[nbt={data:{explorer:2}}] run effect give @a[distance=..10] speed 2 1
execute as @s[nbt={data:{explorer:3}}] run effect give @a[distance=..10] speed 30 1
execute as @s[nbt={data:{explorer:4}}] run effect give @a[distance=..10] speed 60 1

execute as @s[nbt={data:{heart:1}}] run effect give @a[distance=..10] regeneration 2
execute as @s[nbt={data:{heart:2}}] run effect give @a[distance=..10] regeneration 2 1
execute as @s[nbt={data:{heart:3}}] run effect give @a[distance=..10] regeneration 2 2
execute as @s[nbt={data:{heart:4}}] run effect give @a[distance=..10] regeneration 2 3

execute as @s[nbt={data:{miner:1}}] run effect give @a[distance=..10] haste 2
execute as @s[nbt={data:{miner:2}}] run effect give @a[distance=..10] haste 2 1
execute as @s[nbt={data:{miner:3}}] run effect give @a[distance=..15] haste 2 1
execute as @s[nbt={data:{miner:4}}] run effect give @a[distance=..20] haste 2 1

execute as @s[nbt={data:{angler:1}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:1}}] run weather rain
execute as @s[nbt={data:{angler:2}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:2}}] run weather thunder
execute as @s[nbt={data:{angler:3}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:3}}] run weather thunder
execute as @s[nbt={data:{angler:4}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:4}}] run weather thunder

execute as @s[nbt={data:{skull:1}}] as @a[distance=..5] at @s run function chalc:pot/effect/upgrade_gear
execute as @s[nbt={data:{skull:2}}] as @a[distance=..10] at @s run function chalc:pot/effect/upgrade_gear
execute as @s[nbt={data:{skull:3}}] as @a[distance=..15] at @s run function chalc:pot/effect/upgrade_gear
execute as @s[nbt={data:{skull:4}}] as @a[distance=..20] at @s run function chalc:pot/effect/upgrade_gear
