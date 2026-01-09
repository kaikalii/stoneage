$setblock ~ ~ ~ $(block)
execute if block ~ ~ ~ #chalc:throwable run kill @s
execute unless block ~ ~ ~ #chalc:throwable run setblock ~ ~ ~ air