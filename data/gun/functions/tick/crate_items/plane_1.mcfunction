execute if entity @s[nbt={OnGround:0b}] run summon minecraft:area_effect_cloud ^ ^ ^20 {Duration:1s,Tags:["fly_dir"]}
execute if entity @s[nbt={OnGround:1b}] run summon minecraft:area_effect_cloud ^ ^ ^10 {Duration:1s,Tags:["fly_dir"]}

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_x run data get entity @s Pos[0] 1
execute as @s store result score @s fly_pos_x run data get entity @s Pos[0] 1
execute as @s at @s store result entity @s Motion[0] double 0.075 run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_x -= @s fly_pos_x

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_y run data get entity @s Pos[1] 1
execute as @s store result score @s fly_pos_y run data get entity @s Pos[1] 1
execute as @s at @s store result entity @s Motion[1] double 0.075 run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_y -= @s fly_pos_y

execute as @e[type=area_effect_cloud,tag=fly_dir] store result score @s fly_pos_z run data get entity @s Pos[2] 1
execute as @s store result score @s fly_pos_z run data get entity @s Pos[2] 1
execute as @s at @s store result entity @s Motion[2] double 0.075 run scoreboard players operation @e[type=area_effect_cloud,tag=fly_dir,limit=1,sort=nearest] fly_pos_z -= @s fly_pos_z