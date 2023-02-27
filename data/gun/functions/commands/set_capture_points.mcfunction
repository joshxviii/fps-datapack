execute as @e[type=armor_stand,tag=sonar_1,tag=point_a] run tag @s remove point_a
execute as @e[type=armor_stand,tag=sonar_1,tag=point_b] run tag @s remove point_b
execute as @e[type=armor_stand,tag=sonar_1,tag=point_c] run tag @s remove point_c

scoreboard players set point_a point_a 0
scoreboard players set point_b point_b 0
scoreboard players set point_c point_c 0

execute as @e[type=armor_stand,tag=sonar_1,tag=!point_a,tag=!point_b,tag=!point_c,sort=random,limit=1] run tag @s add point_a
execute as @e[type=armor_stand,tag=sonar_1,tag=!point_a,tag=!point_b,tag=!point_c,sort=random,limit=1] run tag @s add point_b
execute as @e[type=armor_stand,tag=sonar_1,tag=!point_a,tag=!point_b,tag=!point_c,sort=random,limit=1] run tag @s add point_c

execute at @e[type=armor_stand,tag=sonar_1,tag=point_a] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=2] run data modify entity @s text set value '{"bold":"true","color":"white","text":"A"}'
execute at @e[type=armor_stand,tag=sonar_1,tag=point_b] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=2] run data modify entity @s text set value '{"bold":"true","color":"white","text":"B"}'
execute at @e[type=armor_stand,tag=sonar_1,tag=point_c] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=2] run data modify entity @s text set value '{"bold":"true","color":"white","text":"C"}'


execute as @e[type=armor_stand,tag=sonar_1,tag=!point_a,tag=!point_b,tag=!point_c,sort=random,limit=1] at @s run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=sonar_1] at @s run function gun:update/unclaimed
