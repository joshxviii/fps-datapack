execute if entity @s[tag=point_a] run bossbar set minecraft:point_a name [{"text":"[ Point A ]","color":"red","bold":"true"}]
execute if entity @s[tag=point_b] run bossbar set minecraft:point_b name [{"text":"[ Point B ]","color":"red","bold":"true"}]
execute if entity @s[tag=point_c] run bossbar set minecraft:point_c name [{"text":"[ Point C ]","color":"red","bold":"true"}]


execute if entity @s[tag=point_a] run tellraw @a[team=red_team] ["",{"text":"Point A","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]
execute if entity @s[tag=point_b] run tellraw @a[team=red_team] ["",{"text":"Point B","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]
execute if entity @s[tag=point_c] run tellraw @a[team=red_team] ["",{"text":"Point C","color":"red","bold":"true"},{"text":" has been captured! ","color":"white"}]

execute if entity @s[tag=point_a] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point A","color":"red","bold":"true"},{"text":"...","color":"white"}]
execute if entity @s[tag=point_b] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point B","color":"red","bold":"true"},{"text":"...","color":"white"}]
execute if entity @s[tag=point_c] run tellraw @a[team=blue_team] ["",{"text":"Team Red","color":"red","bold":"true"},{"text":" has captured ","color":"white"},{"text":"Point C","color":"red","bold":"true"},{"text":"...","color":"white"}]


execute if entity @s[tag=point_a] run team modify point_a color red
execute if entity @s[tag=point_b] run team modify point_b color red
execute if entity @s[tag=point_c] run team modify point_c color red


team join red_team @e[type=minecraft:ender_pearl,tag=sonar_3,limit=1,sort=nearest]

execute as @a[team=red_team] at @s run playsound minecraft:sonar_place player @s ~ ~ ~
fill ~ ~ ~ ~ ~ ~ minecraft:red_concrete replace
tag @s remove claimed_blue
tag @s add claimed_red