execute if entity @s[tag=point_a] run bossbar set minecraft:point_a name [{"text":"Point A","color":"white","bold":"true"}]
execute if entity @s[tag=point_b] run bossbar set minecraft:point_b name [{"text":"Point B","color":"white","bold":"true"}]
execute if entity @s[tag=point_c] run bossbar set minecraft:point_c name [{"text":"Point C","color":"white","bold":"true"}]


execute if entity @s[tag=claimed_red,tag=point_a] run tellraw @a[team=red_team] ["",{"text":"Point A","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]
execute if entity @s[tag=claimed_red,tag=point_b] run tellraw @a[team=red_team] ["",{"text":"Point B","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]
execute if entity @s[tag=claimed_red,tag=point_c] run tellraw @a[team=red_team] ["",{"text":"Point C","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]

execute if entity @s[tag=claimed_blue,tag=point_a] run tellraw @a[team=blue_team] ["",{"text":"Point A","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]
execute if entity @s[tag=claimed_blue,tag=point_b] run tellraw @a[team=blue_team] ["",{"text":"Point B","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]
execute if entity @s[tag=claimed_blue,tag=point_c] run tellraw @a[team=blue_team] ["",{"text":"Point C","color":"white","bold":"true"},{"text":" has been lost... ","color":"white"}]


execute if entity @s[tag=point_a] run team modify point_a color gray
execute if entity @s[tag=point_b] run team modify point_b color gray
execute if entity @s[tag=point_c] run team modify point_c color gray


team leave @e[type=minecraft:ender_pearl,tag=sonar_3,limit=1,sort=nearest]

execute as @a at @s run playsound minecraft:sonar_claim player @s ~ ~ ~
fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_concrete replace
tag @s remove claimed_red
tag @s remove claimed_blue