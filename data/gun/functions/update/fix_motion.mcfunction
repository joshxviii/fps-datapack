execute as @e[tag=update] run data modify entity @s NoGravity set value True
execute as @e[tag=update] run data modify entity @s NoGravity set value False
execute as @e[tag=update] run tag @s remove update