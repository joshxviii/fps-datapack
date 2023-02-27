execute if score @s show_class matches -1 run function gun:commands/classes/select_class_menu

execute if score @s show_class matches 1 run function gun:commands/classes/show_class_1
execute if score @s show_class matches 2 run function gun:commands/classes/show_class_2
execute if score @s show_class matches 3 run function gun:commands/classes/show_class_3
execute if score @s show_class matches 4 run function gun:commands/classes/show_class_4
execute if score @s show_class matches 5 run function gun:commands/classes/show_class_5
execute if score @s show_class matches 6 run function gun:commands/classes/show_class_6
execute if score @s show_class matches 7 run function gun:commands/classes/show_class_7

scoreboard players reset @s show_class