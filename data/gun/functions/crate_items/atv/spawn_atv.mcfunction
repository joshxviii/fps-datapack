tp @s ~ ~ ~ ~90 ~

execute run summon minecraft:donkey ~ ~ ~ {Tags:["vehicle","atv","atv_con"],Tame:1b,ChestedHorse:0b,NoAI:1b,NoGravity:0b,Silent:1b,Variant:1,Invulnerable:0b,DeathTime:18s,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:20.0f,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0.2},{Name:"horse.jump_strength",Base:0.85}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:false}],CustomName:"\"atv\"",SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{ATV:1b}},Passengers:[{id:"item_display",shadow_radius:1,shadow_strength:1.3,Tags:["atv","atv_1"],item_display:"head",item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:410}},Rotation:[0.0f,0.0f]},{id:"interaction",width:1.3,height:.9,response:false,Tags:["rideable","atv","atv_2"]}]}

execute at @s run data modify entity @e[type=donkey,tag=atv_con,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute at @s run data modify entity @e[type=item_display,tag=atv_1,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute store result score @e[type=donkey,tag=atv_con,sort=nearest,limit=1] uuid_1 run scoreboard players get @p uuid_1
