execute as @e[tag=sonar_1] at @s if block ~ ~ ~ #gun:shot_past run kill @e[tag=sonar,limit=3,sort=nearest,distance=..1]

execute as @e[type=area_effect_cloud,tag=sonar_3] at @s run data merge entity @s {Age:0}

scoreboard players add @e[type=area_effect_cloud,tag=sonar_3] point_rotation 10
scoreboard players operation @e[type=area_effect_cloud,tag=sonar_3] point_rotation %= 180 180
execute as @e[type=area_effect_cloud,tag=sonar_3] store result entity @s Rotation[0] float 1 run scoreboard players get @s point_rotation
execute as @e[type=armor_stand,tag=sonar_1] at @s rotated as @e[type=area_effect_cloud,tag=sonar_3,limit=1,sort=nearest] positioned ~ ~-3 ~ rotated ~90 ~ positioned ^5 ^ ^ run function gun:update/capture_zone_2
execute as @e[type=armor_stand,tag=sonar_1] at @s rotated as @e[type=area_effect_cloud,tag=sonar_3,limit=1,sort=nearest] positioned ~ ~-3 ~ rotated ~90 ~ positioned ^-5 ^ ^ run function gun:update/capture_zone_2

bossbar set minecraft:point_a players
bossbar set minecraft:point_b players
bossbar set minecraft:point_c players
execute as @e[type=armor_stand,tag=sonar_1] at @s if entity @a[distance=..5] run function gun:update/sonar_detection
execute as @e[type=armor_stand,tag=sonar_1] at @s if score @s blue_players matches 1.. unless entity @a[distance=..5,team=blue_team] run scoreboard players set @s blue_players 0
execute as @e[type=armor_stand,tag=sonar_1] at @s if score @s red_players matches 1.. unless entity @a[distance=..5,team=red_team] run scoreboard players set @s red_players 0


execute if entity @e[type=armor_stand,tag=sonar_1] run schedule function gun:tick/capture_zone 1t