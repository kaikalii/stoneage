$execute store result score #temp chalc run random value 1..$(n)
execute if score #temp chalc matches 2.. run return 0
return 1