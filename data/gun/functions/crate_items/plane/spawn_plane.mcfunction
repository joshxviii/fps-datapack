tp @s[type=armor_stand] ~ ~ ~ ~180 ~

execute run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Health:32767s,Age:-32768s,Item:{id:"armor_stand",Count:1b,tag:{CustomModelData:305}},NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["vehicle","plane","plane_con"],Passengers:[{id:"donkey",Tags:["vehicle","plane","plane_1"],Tame:0b,ChestedHorse:0b,NoAI:1b,NoGravity:1b,Silent:1b,Variant:1,Invulnerable:0b,DeathTime:18s,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:60.0f,Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.movement_speed",Base:0}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647,ShowParticles:false},{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:false}],CustomName:"\"Plane\"",SaddleItem:{id:"minecraft:void",Count:1b},Passengers:[{id:"item_display",shadow_radius:1.2,shadow_strength:1.3,Tags:["plane","plane_2"],view_range:420,item_display:"head",item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:306}},Rotation:[0.0f,-9.0f]},{id:"interaction",width:1.5,height:1.4,response:false,Tags:["rideable","plane","plane_3"]}]}]}

execute store result score @s uuid_1 on passengers at @s run scoreboard players get @p uuid_1


execute run data modify entity @e[type=item,tag=plane_con,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute run data modify entity @e[type=donkey,tag=plane_1,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute run data modify entity @e[type=item_display,tag=plane_2,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute run data modify entity @e[type=item_display,tag=plane_2,sort=nearest,limit=1] Rotation[1] set value -9f

execute store result score @e[type=item,tag=plane_con,sort=nearest,limit=1] fly_rot_y run data get entity @s Rotation[1]
execute store result score @e[type=item,tag=plane_con,sort=nearest,limit=1] fly_rot_x run data get entity @s Rotation[0]
execute store result score @e[type=item,tag=plane_con,sort=nearest,limit=1] target_rot_y run data get entity @s Rotation[1]
execute store result score @e[type=item,tag=plane_con,sort=nearest,limit=1] target_rot_x run data get entity @s Rotation[0]

execute store result score @e[type=item,tag=plane_con,sort=nearest,limit=1] uuid_1 run scoreboard players get @p uuid_1
