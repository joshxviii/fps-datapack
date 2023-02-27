execute store result score @s target_rot_x2 run data get entity @s Rotation[0] 1
scoreboard players operation @s target_rot_x2 -= @s target_rot_x
scoreboard players operation @s target_rot_x2 %= 360 360
execute if score @s target_rot_x2 > 180 180 run scoreboard players operation @s target_rot_x2 -= 360 360
execute if score @s target_rot_x2 < n180 180 run scoreboard players operation @s target_rot_x2 += 360 360


execute if score @s target_rot_x2 matches 3.. run scoreboard players remove @s fly_rot_x 3
execute if score @s target_rot_x2 matches ..-3 run scoreboard players add @s fly_rot_x 3
scoreboard players operation @s fly_rot_x %= 360 360

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s fly_rot_x


execute if score @s target_rot_y matches 45.. at @s if block ~ ~-.1 ~ #gun:not_solid as @p if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] as @e[type=item,tag=plane_con,limit=1,sort=nearest] run scoreboard players set @s target_rot_y 45
execute if score @s target_rot_y matches 0.. at @s unless block ~ ~-.1 ~ #gun:not_solid as @p if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] as @e[type=item,tag=plane_con,limit=1,sort=nearest] run scoreboard players set @s target_rot_y 0
execute if score @s target_rot_y matches ..0 at @s unless block ~ ~-.1 ~ #gun:not_solid as @p if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] as @e[type=item,tag=plane_con,limit=1,sort=nearest] unless score @s acl matches 5.. run scoreboard players set @s target_rot_y 0
execute if score @s target_rot_y matches ..-45 at @s if block ~ ~-.1 ~ #gun:not_solid as @p if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] as @e[type=item,tag=plane_con,limit=1,sort=nearest] run scoreboard players set @s target_rot_y -45


#execute as @s[tag=plane_con,scores={target_rot_y=..-45},nbt={OnGround:0b}] run scoreboard players set @s target_rot_y -45


execute if score @s fly_rot_y < @s target_rot_y run scoreboard players add @s fly_rot_y 1
execute at @s as @p unless entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] as @e[type=item,tag=plane_con,limit=1,sort=nearest] if score @s fly_rot_y < @s target_rot_y run scoreboard players add @s fly_rot_y 1
execute if score @s fly_rot_y > @s target_rot_y run scoreboard players remove @s fly_rot_y 1
execute unless block ~ ~-.1 ~ #gun:not_solid if score @s fly_rot_y > @s target_rot_y run scoreboard players remove @s fly_rot_y 1

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s fly_rot_y


data modify storage plane_rot_x Rotation set from entity @s Rotation
execute on passengers run data modify entity @s Rotation set from storage plane_rot_x Rotation
execute on passengers on passengers run data modify entity @s Rotation set from storage plane_rot_x Rotation

execute at @s on passengers on passengers as @s[type=item_display,tag=plane_2] store result entity @s transformation.right_rotation[2] float -.0018 run scoreboard players get @e[type=item,tag=plane_con,limit=1,sort=nearest] target_rot_x2

execute if score @s fly_rot_y matches 0..24 store result entity @s FallDistance float 1 run data get entity @s Rotation[1] .3
execute if score @s fly_rot_y matches 24..44 store result entity @s FallDistance float 1 run data get entity @s Rotation[1] .7
execute if score @s fly_rot_y matches 44..90 store result entity @s FallDistance float 1 run data get entity @s Rotation[1] 2


execute if score @s acl matches ..0 on passengers on passengers run data modify entity @s Rotation[1] set value -9.0f

scoreboard players set @s target.rot.bool 1
execute unless score @s target_rot_x2 matches -4..4 run scoreboard players set @s target.rot.bool 0
execute unless score @s fly_rot_y = @s target_rot_y run scoreboard players set @s target.rot.bool 0