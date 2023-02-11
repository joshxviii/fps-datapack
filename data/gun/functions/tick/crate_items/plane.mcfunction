
execute if entity @s[tag=spawn_plane] at @s positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Health:32767s,Age:-32768s,Item:{id:"armor_stand",Count:1b,tag:{CustomModelData:305}},DeathLootTable:"minecraft:empty",Marker:1b,Small:1b,Invisible:0b,NoAI:0b,NoGravity:1b,DisabledSlots:2039575,Silent:1b,Invulnerable:1b,Tags:["vehicle","plane","plane_con"],Passengers:[{id:"donkey",Tags:["vehicle","plane","plane_1"],Tame:0b,ChestedHorse:0b,NoAI:1b,NoGravity:1b,Silent:1b,Variant:1,Invulnerable:0b,DeathTime:18s,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:60.0f,Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.movement_speed",Base:0}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:false}],CustomName:"\"Plane\"",SaddleItem:{id:"minecraft:void",Count:1b}},{id:"armor_stand",Marker:1b,Small:0b,Invisible:1b,NoAI:1b,DisabledSlots:2039575,Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["plane","plane_2"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:306}}]}]}


execute as @s[tag=spawn_plane,nbt={OnGround:1b}] run scoreboard players add @s grd_time 1
execute as @s[tag=spawn_plane,nbt={OnGround:0b}] run scoreboard players set @s grd_time 0


execute as @s[tag=spawn_plane] at @s run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=spawn_plane] at @s store result score @e[tag=plane_con,limit=1,sort=nearest] target_rot_x run data get entity @s Rotation[0]
execute as @s[tag=spawn_plane] at @s run scoreboard players set @e[tag=plane_con,limit=1,sort=nearest] fly_rot_y 0
execute as @s[tag=spawn_plane] at @s run scoreboard players set @e[tag=plane_con,limit=1,sort=nearest] propeller_time 0

execute as @s[tag=plane_con] at @s as @p[distance=..1.5,nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] run clear @s minecraft:warped_fungus_on_a_stick{Plane:1b}
execute as @s[tag=plane_con] at @s as @p[distance=..1.5,nbt=!{SelectedItem:{}},nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{Vehicle:1b,Plane:1b,Unbreakable:1b,CustomModelData:401,HideFlags:31,display:{Name:'[{"text":"Hold Right Click to Fly","italic":"false","color":"white"}]'}}

execute as @s[tag=plane_con,scores={target_rot_y=60..}] run scoreboard players set @s target_rot_y 60
execute as @s[tag=plane_con,scores={target_rot_y=..-45},nbt={OnGround:0b}] run scoreboard players set @s target_rot_y -45
execute as @s[tag=plane_con,scores={target_rot_y=0..},nbt={OnGround:1b}] run scoreboard players set @s target_rot_y 0

execute as @s at @s rotated as @e[tag=plane_con,sort=nearest,limit=1] run tp @s[tag=!plane_con] ~ ~ ~ ~ ~

execute as @s[tag=plane_con] at @s if entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}},scores={use_vehicle=1..}] store result score @s target_rot_x run data get entity @p[distance=..1.5,limit=1,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}},scores={use_vehicle=1..}] Rotation[0]
execute as @s[tag=plane_con] at @s if entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}},scores={use_vehicle=1..}] store result score @s target_rot_y run data get entity @p[distance=..1.5,limit=1,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}},scores={use_vehicle=1..}] Rotation[1]

execute as @s[tag=plane_con] at @s store result score @s target_rot_x2 run data get entity @s Rotation[0]
execute as @s[tag=plane_con] at @s run scoreboard players operation @s target_rot_x2 -= @s target_rot_x
execute as @s[tag=plane_con] at @s run scoreboard players operation @s target_rot_x2 %= 360 360
execute as @s[tag=plane_con] at @s if score @s target_rot_x2 > 180 180 run scoreboard players operation @s target_rot_x2 -= 360 360
execute as @s[tag=plane_con] at @s if score @s target_rot_x2 < n180 180 run scoreboard players operation @s target_rot_x2 += 360 360
execute as @s[tag=plane_con,nbt={OnGround:0b}] if score @s target_rot_x2 > 0 0 run scoreboard players remove @s fly_rot_x 2
execute as @s[tag=plane_con,nbt={OnGround:0b}] if score @s target_rot_x2 < 0 0 run scoreboard players add @s fly_rot_x 2
execute as @s[tag=plane_con,nbt={OnGround:1b}] if score @s target_rot_x2 > 0 0 run scoreboard players remove @s fly_rot_x 4
execute as @s[tag=plane_con,nbt={OnGround:1b}] if score @s target_rot_x2 < 0 0 run scoreboard players add @s fly_rot_x 4
execute as @s[tag=plane_con] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s fly_rot_x


execute as @s[tag=plane_con] unless score @s fly_rot_y = @s target_rot_y if score @s fly_rot_y < @s target_rot_y run scoreboard players add @s fly_rot_y 1
execute as @s[tag=plane_con] unless score @s fly_rot_y = @s target_rot_y if score @s fly_rot_y > @s target_rot_y run scoreboard players remove @s fly_rot_y 1
execute as @s[tag=plane_con] at @s store result entity @s Rotation[1] float 1 run scoreboard players get @s fly_rot_y




execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s if entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run data merge entity @s {NoGravity:1b}
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s unless entity @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] run data merge entity @s {NoGravity:0b}
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s unless block ~ ~-.25 ~ #gun:shot_past run data merge entity @s {NoGravity:0b}
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s if entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run data merge entity @s {NoGravity:0b}


execute as @s[tag=plane_2] run data merge entity @s[nbt={Pose:{}}] {Pose:{Head:[0.001f,0.001f]}}
execute as @s[tag=plane_con] at @s store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1] 1
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s store result score @s fly_mot_y run data get entity @s Motion[1] 5000
execute as @s[tag=plane_con,nbt={OnGround:1b}] at @s run scoreboard players set @s fly_mot_y 1200


execute as @s[tag=plane_2] at @s store result entity @s Pose.Head[0] float -.01 run scoreboard players get @e[tag=plane_con,sort=nearest,limit=1] fly_mot_y
execute as @s[tag=plane_2] at @s store result entity @s Pose.Head[2] float .50 run scoreboard players get @e[tag=plane_con,sort=nearest,limit=1] target_rot_x2









execute as @s[tag=plane_con,nbt={OnGround:0b},scores={propeller_time=..-1}] run scoreboard players set @s propeller_time 7

execute as @s[tag=plane_con,scores={propeller_time=7}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 306
execute as @s[tag=plane_con,scores={propeller_time=6}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 307
execute as @s[tag=plane_con,scores={propeller_time=5}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 308
execute as @s[tag=plane_con,scores={propeller_time=4}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 309
execute as @s[tag=plane_con,scores={propeller_time=3}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 310
execute as @s[tag=plane_con,scores={propeller_time=2}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 311
execute as @s[tag=plane_con,scores={propeller_time=1}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 312
execute as @s[tag=plane_con,scores={propeller_time=0}] at @s run data modify entity @e[tag=plane_2,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 313

execute as @s[tag=plane_con,scores={propeller_time=0..}] run scoreboard players remove @s propeller_time 1













execute as @s[tag=plane_con,nbt={OnGround:1b}] at @s if entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}},scores={use_vehicle=1..}] unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run function gun:tick/crate_items/plane_1

execute as @s[tag=plane_con,nbt={OnGround:0b},scores={vehicle_time=..0}] at @s if entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] run scoreboard players set @s vehicle_time 2

execute as @s[tag=plane_con,scores={vehicle_time=2}] at @s unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run function gun:tick/crate_items/plane_1

execute as @s[tag=plane_con,nbt={OnGround:0b}] run scoreboard players remove @s vehicle_time 1








execute as @s[tag=plane_con,nbt={OnGround:0b}] run scoreboard players add @s plane_sounds 1

execute as @s[tag=plane_con,scores={plane_sounds=1}] at @s unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run playsound minecraft:plane.fly_close player @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] ~ ~ ~ 1 1 0

execute as @s[tag=plane_con,scores={plane_sounds=1000..}] at @s run scoreboard players set @s plane_sounds 0
execute as @s[tag=plane_con,nbt={OnGround:1b},scores={plane_sounds=1..}] at @s run scoreboard players set @s plane_sounds 0
execute as @s[tag=plane_con,nbt={OnGround:1b}] at @s run stopsound @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] player minecraft:plane.fly_close
execute run stopsound @a[nbt=!{RootVehicle:{Entity:{Tags:["plane_con"]}}}] player minecraft:plane.fly_close
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s if entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] run stopsound @p[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] player minecraft:plane.fly_close




execute as @s[tag=plane_con,nbt={OnGround:1b}] at @s run scoreboard players set @s plane_sounds_2 0

execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far1 player @a[distance=2..31] ~ ~ ~ 4 1 .5
execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far2 player @a[distance=32..63] ~ ~ ~ 6 1 .5
execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far3 player @a[distance=64..160] ~ ~ ~ 10 1 0

execute as @s[tag=plane_con,nbt={OnGround:0b}] run scoreboard players add @s plane_sounds_2 1

execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=2..31] player minecraft:plane.fly_far1
execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=32..63] player minecraft:plane.fly_far2
execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=64..160] player minecraft:plane.fly_far3


execute as @s[tag=plane_con,scores={plane_sounds_2=25..}] at @s run scoreboard players set @s plane_sounds_2 0


execute as @s[tag=plane_con,nbt={OnGround:0b},scores={fly_rot_y=..15}] at @s if entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] store result entity @s FallDistance float 1 run data get entity @s Rotation[1] .5
execute as @s[tag=plane_con,nbt={OnGround:0b},scores={fly_rot_y=16..}] at @s if entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] unless entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] store result entity @s FallDistance float -1 run data get entity @s FallDistance -1.01
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s unless entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] store result entity @s FallDistance float -1 run data get entity @s FallDistance -1.02
execute as @s[tag=plane_con,nbt={OnGround:0b}] at @s if entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] store result entity @s FallDistance float -1 run data get entity @s FallDistance -1.02



execute as @s[tag=plane_con] at @s store result score @s fall_dis run data get entity @s FallDistance 1
#execute as @s[tag=plane_con,scores={fall_dis=1..}] at @s if entity @a[distance=..1.5,nbt={RootVehicle:{Entity:{Tags:["plane_con"]}}}] run data merge entity @s {FallDistance:0.0f}




execute as @s[tag=plane_1] at @s store result score @s health run data get entity @s Health 1
execute as @s[tag=plane_1,scores={health=..30}] at @s as @e[tag=plane_2,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run particle minecraft:large_smoke ^ ^.3 ^1.15 0.15 0.15 0.15 0.025 1 force
execute as @s[tag=plane_1,scores={health=..30}] at @s if entity @e[tag=plane_1,scores={health=..6},limit=1,sort=nearest] as @e[tag=plane_2,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run particle minecraft:lava ^ ^.3 ^1.15 0.15 0.15 0.15 0.025 0 force





execute as @s[tag=plane_con] at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.9 0
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run playsound minecraft:explosion.close neutral @a[distance=..48] ~ ~ ~ 5.5 1 1
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run playsound minecraft:explosion.far neutral @a[distance=49..120] ~ ~ ~ 12.25 1 1
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run playsound minecraft:explosion.very_far neutral @a[distance=121..220] ~ ~ ~ 12.25 1 1
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run summon minecraft:creeper ~ ~ ~ {DeathTime:18s,DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,NoGravity:1b,Fuse:0,power:2,ExplosionRadius:8,CustomName:"\"an explosion\""}
execute as @s at @s unless entity @e[tag=plane_1,distance=..1,limit=1] run kill @s


kill @s[tag=spawn_plane]
tag @s[tag=spawn_plane] remove spawn_plane

