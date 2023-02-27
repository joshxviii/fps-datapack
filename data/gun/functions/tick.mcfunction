function gun:tick/main

execute as @a if score @s class matches 1.. run function gun:commands/classes/select_class_trigger
execute as @a unless score @s show_class matches 0 run function gun:commands/classes/show_class_trigger


execute as @e[type=interaction,tag=rideable] run function gun:crate_items/vehicle_controls/vehicle_1t


scoreboard players enable @a show_class
scoreboard players enable @a class

schedule function gun:tick 1t