clear @s
execute unless score @s selected_class matches 1.. run function gun:commands/classes/class_1
execute if score @s selected_class matches 1 run function gun:commands/classes/class_1
execute if score @s selected_class matches 2 run function gun:commands/classes/class_2
execute if score @s selected_class matches 3 run function gun:commands/classes/class_3
execute if score @s selected_class matches 4 run function gun:commands/classes/class_4
execute if score @s selected_class matches 5 run function gun:commands/classes/class_5
execute if score @s selected_class matches 6 run function gun:commands/classes/class_6
execute if score @s selected_class matches 7 run function gun:commands/classes/class_7


item modify entity @s armor.head gun:bind_armor
item modify entity @s armor.chest gun:bind_armor
item modify entity @s armor.legs gun:bind_armor
item modify entity @s armor.feet gun:bind_armor