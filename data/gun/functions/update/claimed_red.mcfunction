execute if entity @s[tag=point_a] run bossbar set minecraft:point_a name [{"text":"[ Point A ]","color":"red","bold":"true"}]
execute if entity @s[tag=point_b] run bossbar set minecraft:point_b name [{"text":"[ Point B ]","color":"red","bold":"true"}]
execute if entity @s[tag=point_c] run bossbar set minecraft:point_c name [{"text":"[ Point C ]","color":"red","bold":"true"}]


execute if entity @s[tag=point_a] run tellraw @a[team=red_team] ["",{"text":"Point A","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]
execute if entity @s[tag=point_b] run tellraw @a[team=red_team] ["",{"text":"Point B","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]
execute if entity @s[tag=point_c] run tellraw @a[team=red_team] ["",{"text":"Point C","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]

execute if entity @s[tag=point_a] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point A","color":"red","bold":"true"},{"text":"...","color":"white"}]
execute if entity @s[tag=point_b] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point B","color":"red","bold":"true"},{"text":"...","color":"white"}]
execute if entity @s[tag=point_c] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point C","color":"red","bold":"true"},{"text":"...","color":"white"}]


execute if entity @s[tag=point_a] run team modify line.5 suffix [{"translate":"space.-75"},{"translate":"space.-58"},{"bold":true,"color":"red","text":"[Point A]"}]
execute if entity @s[tag=point_b] run team modify line.7 suffix [{"translate":"space.-75"},{"translate":"space.-58"},{"bold":true,"color":"red","text":"[Point B]"}]
execute if entity @s[tag=point_c] run team modify line.9 suffix [{"translate":"space.-75"},{"translate":"space.-58"},{"bold":true,"color":"red","text":"[Point C]"}]

execute if entity @s[tag=point_a] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=1] run data modify entity @s text set value '{"bold":"true","color":"red","text":"A"}'
execute if entity @s[tag=point_b] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=1] run data modify entity @s text set value '{"bold":"true","color":"red","text":"B"}'
execute if entity @s[tag=point_c] as @e[type=minecraft:text_display,tag=sonar_3,sort=nearest,limit=1] run data modify entity @s text set value '{"bold":"true","color":"red","text":"C"}'

team join red_team @e[type=minecraft:text_display,tag=sonar_3,limit=1,sort=nearest]

execute as @a[team=red_team] at @s run playsound minecraft:sonar_place player @s ~ ~ ~
fill ~ ~ ~ ~ ~ ~ minecraft:red_concrete replace
tag @s remove claimed_blue
tag @s add claimed_red