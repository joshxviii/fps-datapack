
execute as @e[tag=grapple_ride2] at @s unless entity @a[distance=...5] run tp @s ~ ~-1000 ~

execute on origin if entity @e[type=minecraft:fishing_bobber,tag=grapple_hook,distance=..1] run tp @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] ~ ~-1000 ~
execute on origin run kill @e[type=minecraft:fishing_bobber,tag=grapple_hook,distance=..1]


execute on origin store result score @s grap_mot_x run data get entity @e[type=fishing_bobber,limit=1,sort=nearest,tag=grapple_hook] Pos[0] 10
execute on origin store result score @s grap_mot_y run data get entity @e[type=fishing_bobber,limit=1,sort=nearest,tag=grapple_hook] Pos[1] 10
execute on origin store result score @s grap_mot_z run data get entity @e[type=fishing_bobber,limit=1,sort=nearest,tag=grapple_hook] Pos[2] 10

execute on origin run scoreboard players add @s grap_mot_y 5

execute on origin at @s store result score @s grap_mot2_x run data get entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Pos[0] 10
execute on origin at @s store result score @s grap_mot2_y run data get entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Pos[1] 10
execute on origin at @s store result score @s grap_mot2_z run data get entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Pos[2] 10

execute on origin at @s store result entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Motion[0] double .02 run scoreboard players operation @s grap_mot_x -= @s grap_mot2_x
execute on origin at @s store result entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Motion[1] double .02 run scoreboard players operation @s grap_mot_y -= @s grap_mot2_y
execute on origin at @s store result entity @e[limit=1,sort=nearest,tag=grapple_ride2,distance=..4] Motion[2] double .02 run scoreboard players operation @s grap_mot_z -= @s grap_mot2_z