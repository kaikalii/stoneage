summon marker ~ ~-0.5 ~
execute as @n[type=marker] at @s run tp @s ~ ~ ~ facing entity @n[type=marker,tag=enchantment_node]
execute as @n[type=marker] at @s run particle dust{color:[0.45,0.05,0.05],scale:1} ^ ^ ^-1.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.50,0.10,0.10],scale:1} ^ ^ ^-1.0 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.55,0.15,0.15],scale:1} ^ ^ ^-0.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.60,0.20,0.20],scale:1} ^ ^ ^0.0 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.65,0.25,0.25],scale:1} ^ ^ ^0.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.70,0.30,0.30],scale:1} ^ ^ ^1.0 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.75,0.35,0.35],scale:1} ^ ^ ^1.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.80,0.40,0.40],scale:1} ^ ^ ^2.0 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.85,0.45,0.45],scale:1} ^ ^ ^2.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.90,0.50,0.50],scale:1} ^ ^ ^3.0 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[0.95,0.55,0.55],scale:1} ^ ^ ^3.5 0 0 0 0 1
execute as @n[type=marker] at @s run particle dust{color:[1.00,0.60,0.60],scale:1} ^ ^ ^4.0 0 0 0 0 1
execute as @n[type=marker] at @s positioned ^ ^ ^4 run playsound item.book.put block @a
kill @n[type=marker,tag=!enchantment_node]
title @s actionbar {"text": "Too close to an existing enchanting spot", color: red}
return 0