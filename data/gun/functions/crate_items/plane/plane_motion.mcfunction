data modify entity @s NoGravity set value False
data modify entity @s NoGravity set value True


execute if score @s acl <= acl.max acl.max run scoreboard players operation @s plane_acl2 = @s acl
execute if score @s acl > acl.max acl.max run scoreboard players operation @s plane_acl2 = acl.max acl.max
scoreboard players operation @s plane_acl2 *= 100 100
scoreboard players operation @s plane_acl2 /= acl.max acl.max

summon minecraft:area_effect_cloud ^ ^ ^.01 {Duration:1s,Tags:["fly_dir"]}

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_x run data get entity @s Pos[0] 1000
execute store result score @s fly_pos_x run data get entity @s Pos[0] 1000
execute at @s store result score @s fly_pos_x run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_x -= @s fly_pos_x
execute store result entity @s Motion[0] double 0.001 run scoreboard players operation @s fly_pos_x *= @s plane_acl2

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_y run data get entity @s Pos[1] 1000
execute store result score @s fly_pos_y run data get entity @s Pos[1] 1000
execute at @s store result score @s fly_pos_y run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_y -= @s fly_pos_y
execute store result entity @s Motion[1] double 0.001 run scoreboard players operation @s fly_pos_y *= @s plane_acl2

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_z run data get entity @s Pos[2] 1000
execute store result score @s fly_pos_z run data get entity @s Pos[2] 1000
execute at @s store result score @s fly_pos_z run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_z -= @s fly_pos_z
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s fly_pos_z *= @s plane_acl2


#execute at @s unless entity @p[nbt=!{RootVehicle:{Entity:{Tags:["plane_con"]}}}] run scoreboard players set @s target_rot_y 45

execute at @s as @p if block ~ ~-.1 ~ #gun:not_solid unless entity @s[distance=..3,nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] run scoreboard players set @e[type=item,tag=plane_con,limit=1,sort=nearest] target_rot_y 80
execute at @s as @p if block ~ ~-.1 ~ #gun:not_solid unless entity @s[distance=..3,nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] run scoreboard players set @e[type=item,tag=plane_con,limit=1,sort=nearest] target.rot.bool 0

execute at @s as @p unless block ~ ~-.1 ~ #gun:not_solid unless entity @s[distance=..3,nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] run scoreboard players set @e[type=item,tag=plane_con,limit=1,sort=nearest] target_rot_y 0


execute if score @s acl matches ..0 run data modify entity @s Motion set value [0f,0f,0f]
execute if score @s acl matches ..0 on passengers on passengers run data modify entity @s Rotation[1] set value -9.0f
execute if score @s acl matches ..0 run scoreboard players set @s target.rot.bool 1

execute rotated ~ 0 unless block ^ ^ ^.4 #gun:not_solid if block ^ ^1 ^.4 #gun:not_solid at @s run tp @s ~ ~.5 ~


