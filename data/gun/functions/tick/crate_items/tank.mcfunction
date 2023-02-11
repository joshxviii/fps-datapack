
execute if entity @s[tag=spawn_tank] at @s positioned ^ ^ ^ run summon minecraft:boat ~ ~ ~ {Type:"acacia",LootTable:"minecraft:empty",DeathLootTable:"minecraft:empty",NoAI:1b,NoGravity:0b,Tags:["vehicle","tank","tank_1"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:1,Amplifier:0,Duration:2147483647,ShowParticles:false}],Passengers:[{id:"armor_stand",Invisible:1b,NoAI:1b,DisabledSlots:2039575,NoGravity:1b,Marker:1b,Tags:["vehicle","tank","tank_2"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:314}}],Passengers:[{id:"armor_stand",Invisible:1b,NoAI:1b,DisabledSlots:2039575,NoGravity:1b,Marker:1b,Tags:["vehicle","tank","tank_3"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:315}}]},{id:"armor_stand",Invisible:1b,NoAI:1b,DisabledSlots:2039575,NoGravity:1b,Marker:1b,Tags:["vehicle","tank","tank_4"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:316}}]}]}]}

execute as @s[tag=spawn_tank] at @s run tp @e[tag=tank_1,sort=nearest,limit=1] ~ ~ ~ ~180 ~

execute as @s[tag=!tank_1] run data merge entity @s[nbt=!{Pose:{Head:[]}}] {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute as @s[tag=tank_2] at @s run data modify entity @s Rotation[0] set from entity @e[tag=tank_1,limit=1,sort=nearest] Rotation[0]
execute as @s[tag=tank_3] at @s run data modify entity @s Rotation[0] set from entity @e[tag=tank_1,limit=1,sort=nearest] Rotation[0]
execute as @s[tag=tank_4] at @s run data modify entity @s Rotation[0] set from entity @e[tag=tank_1,limit=1,sort=nearest] Rotation[0]

execute as @s[tag=tank_3] at @s store result score @s tank_rot_x run data get entity @s Rotation[0] 1
execute as @s[tag=tank_3] at @s run data modify entity @s Pose.Head[1] set from entity @p[distance=..1,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}}] Rotation[0]
execute as @s[tag=tank_3] at @s unless entity @p[distance=..1,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}}] run data modify entity @s Pose.Head[1] set from entity @e[tag=tank_1,sort=nearest,limit=1] Rotation[0]
execute as @s[tag=tank_3] at @s store result score @s tank_h_rot_x run data get entity @s Pose.Head[1] 1
execute as @s[tag=tank_3] at @s store result entity @s Pose.Head[1] float 1 run scoreboard players operation @s tank_h_rot_x -= @s tank_rot_x
execute as @s[tag=tank_4] at @s run data modify entity @s Pose.Head[1] set from entity @e[tag=tank_3,limit=1,sort=nearest] Pose.Head[1]


execute as @s[tag=tank_4,scores={tank_rot_y=..1}] at @s store result entity @s Pose.Head[0] float 1 run data get entity @p[distance=..1,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}}] Rotation[1] .33
execute as @s[tag=tank_4] at @s store result score @s tank_rot_y run data get entity @s Pose.Head[0] 1
execute as @s[tag=tank_4,scores={tank_rot_y=10..}] at @s store result entity @s Pose.Head[0] float 1 run scoreboard players set @s tank_rot_y 10







execute as @s[tag=tank_4] at @s positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Duration:2s,Age:0,Tags:["tank","tank_aim_dir"]}

execute as @s[tag=tank_3] at @s run scoreboard players operation @s tank_rot_x += @s tank_h_rot_x
execute as @s[tag=tank_3] at @s positioned ~ ~ ~ store result entity @e[tag=tank_aim_dir,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s tank_rot_x
execute as @s[tag=tank_4] at @s if entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}},scores={use_vehicle=1..}] positioned ~ ~ ~ run data modify entity @e[tag=tank_aim_dir,limit=1,sort=nearest] Rotation[1] set from entity @s Pose.Head[0]

execute as @s[tag=tank_4] at @s if entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}},scores={use_vehicle=1..}] as @e[tag=tank_aim_dir,limit=1,sort=nearest,nbt={Age:1}] at @s rotated ~ ~ positioned ~ ~2 ~ positioned ^ ^ ^3 run function gun:tick/fire_start




execute as @s[tag=tank_1] at @s unless entity @p[distance=..1,nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}},nbt={Motion:[0.0d,0.0d,0.0d]}] unless block ^ ^ ^1 #gun:shot_past positioned ~ ~1 ~ if block ^ ^ ^1 #gun:shot_past run data merge entity @s {NoGravity:1b,Motion:[0.0,0.25,0.0]}
execute as @s[tag=tank_1] at @s if block ^ ^ ^1 #gun:shot_past run data merge entity @s {NoGravity:0b}




execute as @s[tag=tank_1] at @s as @p[distance=..2,nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}}] run clear @s minecraft:warped_fungus_on_a_stick{Tank:1b}
execute as @s[tag=tank_1] at @s as @p[distance=..2,nbt=!{SelectedItem:{}},nbt={RootVehicle:{Entity:{Tags:["tank_1"]}}}] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{Vehicle:1b,Tank:1b,Unbreakable:1b,HideFlags:31,CustomModelData:401,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1.0,Operation:2.0,UUID:[I;42853,1689024593,-201178,-1559272105]}],display:{Name:'[{"text":"Press Right Click to Fire","italic":"false","color":"white"}]'}}





execute as @s[tag=tank_1] at @s if block ~ ~ ~ water run kill @s
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run playsound minecraft:explosion.close neutral @a[distance=..48] ~ ~ ~ 3.5 1 1
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run playsound minecraft:explosion.far neutral @a[distance=49..120] ~ ~ ~ 10.25 1 1
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run playsound minecraft:explosion.very_far neutral @a[distance=121..220] ~ ~ ~ 12.25 1 1
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run summon minecraft:creeper ~ ~ ~ {DeathTime:18s,DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,NoGravity:1b,Fuse:0,power:2,ExplosionRadius:8,CustomName:"\"an explosion\""}
execute as @s at @s unless entity @e[distance=..3,tag=tank_1,sort=nearest,limit=1] run kill @s



kill @s[tag=spawn_tank]
tag @s[tag=spawn_tank] remove spawn_tank