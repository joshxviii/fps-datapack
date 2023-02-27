execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0 0 force
execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 force


execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s run tp @s ^ ^ ^1 ~ ~.26


execute as @e[type=minecraft:area_effect_cloud,tag=projectile,nbt={Age:99}] at @s run tag @s add has_hit
execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s unless block ~ ~ ~ #gun:not_solid run tag @s add has_hit
execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.90 ~-.90 ~-.90 if entity @e[dx=0,type=!#gun:cant_shot] run tag @s add has_hit



execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s if entity @s[tag=has_hit] run function gun:update/explode
execute as @e[type=minecraft:area_effect_cloud,tag=projectile] at @s if entity @s[tag=has_hit] run kill @s


execute if entity @e[type=minecraft:area_effect_cloud,tag=projectile] run schedule function gun:update/fire_projectile 1t