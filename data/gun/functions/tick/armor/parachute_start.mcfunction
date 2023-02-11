execute at @s[tag=!is_para] run summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:.1f,ReapplicationDelay:0,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,Age:4,WaitTime:3,DurationOnUse:0f,Effects:[{Id:25,Amplifier:25,Duration:5,ShowParticles:0b}],Passengers:[{id:"armor_stand",Marker:1b,Silent:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["parachute"],HandItems:[{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:204,display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:204,display:{color:16777215}}}],ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:203}}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}]}
execute at @s[tag=!is_para] run playsound minecraft:parachute_open player @a[distance=..16] ~ ~.5 ~ 1 .7 0
execute at @s[tag=!is_para] run item replace entity @e[tag=parachute,limit=1,sort=nearest] armor.chest from entity @s armor.chest
execute at @s[tag=!is_para] run execute as @e[tag=parachute,limit=1,sort=nearest] unless entity @s[nbt={ArmorItems:[{},{},{tag:{display:{color:12690806}}},{}]}] run data modify entity @s HandItems[1].tag.display.color set from entity @s ArmorItems[2].tag.display.color
execute at @s[tag=!is_para] run execute as @e[tag=parachute,limit=1,sort=nearest] unless entity @s[nbt={ArmorItems:[{},{},{tag:{display:{color:12690806}}},{}]}] run data modify entity @s HandItems[0].tag.display.color set from entity @s ArmorItems[2].tag.display.color
execute at @s[tag=!is_para] run item replace entity @e[tag=parachute,limit=1,sort=nearest] armor.chest with air

execute at @s[tag=!is_para] run scoreboard players operation @e[tag=parachute,limit=1,sort=nearest] owner_id = @s uuid_1



execute at @s[tag=!is_para] run summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:.1f,ReapplicationDelay:0,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,Age:4,WaitTime:3,DurationOnUse:-3f,Effects:[{Id:28,Amplifier:0,Duration:2,ShowParticles:0b}]}

execute run tag @s add is_para

scoreboard players set @s fall_dis 0

execute run function gun:tick/armor/parachute