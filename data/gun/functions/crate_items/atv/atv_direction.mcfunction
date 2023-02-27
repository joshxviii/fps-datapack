execute store result score @s target_rot_x2 on passengers as @s[type=item_display] run data get entity @s Rotation[0] 1
scoreboard players operation @s target_rot_x2 -= @s target_rot_x
scoreboard players operation @s target_rot_x2 %= 360 360
execute if score @s target_rot_x2 > 180 180 run scoreboard players operation @s target_rot_x2 -= 360 360
execute if score @s target_rot_x2 < n180 180 run scoreboard players operation @s target_rot_x2 += 360 360


scoreboard players operation @s turn_acl = @s target_rot_x2
scoreboard players operation @s turn_acl /= 4 4

execute run scoreboard players operation @s fly_rot_x -= @s turn_acl

#execute if score @s target_rot_x2 matches 3.. run scoreboard players operation @s fly_rot_x -= @s turn_acl
#execute if score @s target_rot_x2 matches ..-3 run scoreboard players add @s fly_rot_x 12
scoreboard players operation @s fly_rot_x %= 360 360



scoreboard players operation @s turn_acl *= @s turn_acl
scoreboard players operation @s turn_acl /= @s acl
scoreboard players operation @s acl -= @s turn_acl

execute store result score @s fly_rot_y on passengers as @s[type=item_display] run data get entity @s Rotation[1] 1
execute if score @s fly_rot_y < @s target_rot_y run scoreboard players add @s fly_rot_y 5
execute if score @s fly_rot_y > @s target_rot_y run scoreboard players remove @s fly_rot_y 7





summon minecraft:area_effect_cloud ^ ^ ^ {Duration:1s,Tags:["motor_dir"]}

execute at @s store result entity @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] Pos[0] double .01 run scoreboard players get @s pos_x
execute at @s store result entity @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] Pos[1] double .01 run scoreboard players get @s pos_y
execute at @s store result entity @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] Pos[2] double .01 run scoreboard players get @s pos_z

execute at @s at @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] facing entity @s feet run tp @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute store result score @s target_rot_x run data get entity @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] Rotation[0] 1
execute store result score @s target_rot_y run data get entity @e[type=area_effect_cloud,tag=motor_dir,limit=1,sort=nearest] Rotation[1] 1


execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get @e[type=donkey,tag=atv_con,limit=1,sort=nearest] fly_rot_x
execute on passengers store result entity @s Rotation[1] float 1 run scoreboard players get @e[type=donkey,tag=atv_con,limit=1,sort=nearest] fly_rot_y
