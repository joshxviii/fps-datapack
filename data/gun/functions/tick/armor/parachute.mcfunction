execute as @a[tag=is_para] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:.1f,ReapplicationDelay:0,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,Age:4,WaitTime:3,DurationOnUse:-3f,Effects:[{Id:28,Amplifier:0,Duration:2,ShowParticles:0b}]}
execute at @a[tag=is_para] as @e[type=armor_stand,tag=parachute] if score @s owner_id = @p uuid_1 positioned ~ ~-1 ~ run tp @s ^ ^ ^
#execute as @a[tag=is_para] store result score @s fall_spd run data get entity @s Motion[1] 1000
scoreboard players add @a[tag=is_para,nbt={OnGround:1b}] grd_time 1
execute as @a[tag=!has_para,tag=is_para] run tag @s remove is_para
execute as @a[tag=is_para] unless entity @s[predicate=!gun:swimming,gamemode=!creative,gamemode=!spectator] run tag @s remove is_para
execute as @a[scores={grd_time=3..}] at @s run tag @s remove is_para
execute as @a[scores={grd_time=3..}] at @s run scoreboard players set @a grd_time 0
execute as @a[tag=!is_para] at @s as @e[type=armor_stand,tag=parachute] if score @s owner_id = @p uuid_1 run kill @s
execute unless entity @a[tag=is_para] as @e[type=armor_stand,tag=parachute] run kill @s
execute if entity @a[tag=is_para] run schedule function gun:tick/armor/parachute 1t