execute as @s[tag=turret_1] run data merge entity @s[nbt={Pose:{}}] {Pose:{Head:[0.001f,0.001f]}}

execute as @s[tag=turret_1] at @s as @p[distance=..2,nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},nbt={RootVehicle:{Entity:{Tags:["turret","turret_2"]}}}] run clear @s minecraft:warped_fungus_on_a_stick{Turret:1b}

execute as @s[tag=turret_1] at @s as @p[distance=..2,nbt=!{SelectedItem:{}},nbt={RootVehicle:{Entity:{Tags:["turret","turret_2"]}}}] run title @s actionbar ["",{"text":"Hold Right Click to Fire","color":"white"},""]
execute as @s[tag=turret_1] at @s as @p[distance=..2,nbt=!{SelectedItem:{}},nbt={RootVehicle:{Entity:{Tags:["turret","turret_2"]}}}] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{Vehicle:1b,Turret:1b,Shoots:1b,gun_damage:4,Unbreakable:1b,HideFlags:31,CustomModelData:401,display:{Name:'[{"text":"Turret","italic":"false","color":"white"}]'}}

execute as @s[tag=turret_1] at @s rotated as @p[distance=..2,nbt={RootVehicle:{Entity:{Tags:["turret_2"]}}}] run tp @s ~ ~ ~ ~ ~
execute as @s[tag=turret_1] at @s store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1] 1


execute as @s[tag=turret_1] at @s positioned ~ ~-1.8 ~ positioned ^ ^ ^.25 positioned ~ ~.75 ~ rotated ~ ~ positioned ^ ^.75 ^-.5 run tp @e[tag=turret_2,limit=1,sort=nearest,distance=..2] ~ ~ ~ ~ ~
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ run tp @e[tag=turret_3,limit=1,sort=nearest,distance=..2] ~ ~1 ~


execute as @s[tag=turret_1] at @s if block ~ ~-.55 ~ #gun:shot_past run kill @e[tag=turret,distance=..2,limit=3]
execute as @s[tag=turret_1] at @s unless entity @e[tag=turret_2,distance=..2,limit=1] run playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.9 0
execute as @s[tag=turret_1] at @s unless entity @e[tag=turret_2,distance=..2,limit=1] run kill @s

execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run playsound minecraft:explosion.close neutral @a[distance=..48] ~ ~ ~ 3.5 1 1
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run playsound minecraft:explosion.far neutral @a[distance=49..120] ~ ~ ~ 10.25 1 1
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run playsound minecraft:explosion.very_far neutral @a[distance=121..220] ~ ~ ~ 12.25 1 1
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run summon minecraft:creeper ~ ~1 ~ {DeathTime:18s,DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,NoGravity:1b,Fuse:0,power:1,ExplosionRadius:1.5,CustomName:"\"an explosion\""}
execute as @s[tag=turret_1] at @s positioned ~ ~-1 ~ as @e[tag=turret_3,distance=..2] positioned ~ ~1 ~ unless entity @e[tag=turret_2,distance=..2,limit=1] run kill @s








execute as @s[tag=turret_1] at @s if entity @a[distance=..2,nbt={RootVehicle:{Entity:{Tags:["turret_2"]}}},scores={use_vehicle=1..}] run scoreboard players set @s vehicle_time 8
execute as @s[tag=turret_1,scores={vehicle_time=0..}] at @s positioned ~ ~.66 ~ run particle minecraft:bubble_pop ^.05 ^.75 ^2 0.075 0.075 0.075 0 1 force
execute as @s[tag=turret_1,scores={vehicle_time=8}] at @s positioned ~ ~.66 ~ run particle minecraft:flash ^.05 ^.75 ^2 0.0 0.0 0.0 0 1 force

execute as @s[tag=turret_1,scores={vehicle_time=8}] at @s positioned ~ ~.65 ~ run playsound minecraft:gun.turret player @a[distance=..32] ^ ^ ^.1 2.5 .98 1
  execute as @s[tag=turret_1,scores={vehicle_time=8}] at @s positioned ~ ~.65 ~ positioned ^-.15 ^.8 ^1.5 rotated ~.1 ~-.1 as @p[tag=on_turret,limit=1,sort=nearest] run function gun:update/fire
execute as @s[tag=turret_1,scores={vehicle_time=6}] at @s positioned ~ ~.65 ~ run playsound minecraft:gun.turret player @a[distance=..32] ^ ^ ^.1 2.5 .98 1
    execute as @s[tag=turret_1,scores={vehicle_time=6}] at @s positioned ~ ~.65 ~ positioned ^.15 ^.8 ^1.5 rotated ~.1 ~.1 as @p[tag=on_turret,limit=1,sort=nearest] run function gun:update/fire
execute as @s[tag=turret_1,scores={vehicle_time=4}] at @s positioned ~ ~.65 ~ run playsound minecraft:gun.turret player @a[distance=..32] ^ ^ ^.1 2.5 .98 1
execute as @s[tag=turret_1,scores={vehicle_time=4}] at @s positioned ~ ~.65 ~ positioned ^-.15 ^.65 ^1.5 rotated ~-.1 ~-.1 as @p[tag=on_turret,limit=1,sort=nearest] run function gun:update/fire
execute as @s[tag=turret_1,scores={vehicle_time=2}] at @s positioned ~ ~.65 ~ run playsound minecraft:gun.turret_end player @a[distance=..32] ^ ^ ^.1 2.5 .98 1
  execute as @s[tag=turret_1,scores={vehicle_time=2}] at @s positioned ~ ~.65 ~ positioned ^.15 ^.65 ^1.5 rotated ~-.1 ~.1 as @p[tag=on_turret,limit=1,sort=nearest] run function gun:update/fire
execute as @s[tag=turret_1,scores={vehicle_time=0..}] run scoreboard players remove @s vehicle_time 1
