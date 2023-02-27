
execute as @e[type=donkey,tag=atv_con] at @s if entity @p[scores={riding=1..}] run function gun:crate_items/atv/atv_direction

execute as @e[type=donkey,tag=atv_con] at @s on passengers at @s if entity @p[nbt={RootVehicle:{Entity:{Tags:["atv_con"]}}}] run schedule function gun:crate_items/atv/atv_1t 1t



#execute as @e[type=donkey,tag=atv_con] at @s on passengers as @s[scores={riding=1..}] run scoreboard players operation @e[type=donkey,tag=atv_con,sort=nearest] acl = @s riding


execute as @e[type=donkey,tag=atv_con] at @s on passengers if entity @s[scores={riding=1..}] as @e[type=donkey,tag=atv_con,sort=nearest] if score @s acl matches ..59 run scoreboard players add @s acl 1
execute as @e[type=donkey,tag=atv_con] at @s on passengers unless entity @p[scores={riding=1..}] as @e[type=donkey,tag=atv_con,sort=nearest] if score @s acl matches 30.. run scoreboard players remove @s acl 2

execute as @e[type=donkey,tag=atv_con] if score @s acl matches ..0 run scoreboard players set @s acl 30
#execute as @e[type=donkey,tag=atv_con] if score @s acl matches 99.. run scoreboard players set @s acl 40


execute as @e[type=donkey,tag=atv_con] store result entity @s Attributes.[{Name:"generic.movement_speed"}].Base float .0075 run scoreboard players get @s acl

execute as @e[type=donkey,tag=atv_con] at @s on passengers as @p[scores={riding=1..}] run scoreboard players reset @p riding