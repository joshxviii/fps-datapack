summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200s,Age:0,CustomName:"",Tags:["weapon_type_finder"]}

execute at @s run playsound minecraft:explosion.close neutral @a[distance=..50] ~ ~ ~ 5.5 1 1
execute at @s run playsound minecraft:explosion.far neutral @a[distance=50..120] ~ ~ ~ 12.25 1 1
execute at @s run playsound minecraft:explosion.very_far neutral @a[distance=120..220] ~ ~ ~ 12.25 1 1


execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force


execute at @s as @a[gamemode=!spectator,gamemode=!creative,distance=..7] store result score @s health run data get entity @s Health
execute at @s run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..8] attacker_id = @s uuid_1


execute at @s[tag=projectile] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute at @s[tag=projectile] run scoreboard players set @a[gamemode=!spectator,gamemode=!creative,distance=..8] p_damage_type 2
execute at @s[tag=projectile] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..8] p_damage += @s damage
execute at @s[tag=projectile] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..1.5] p_damage *= 2 2
execute at @s[tag=projectile] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=4..8] p_damage /= 2 2
execute at @s[tag=projectile] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=6..8] p_damage /= 2 2


execute at @s[tag=gernade] run particle minecraft:explosion ~ ~1 ~ .7 .7 .7 .1 6 force
execute at @s[tag=gernade] run scoreboard players set @a[gamemode=!spectator,gamemode=!creative,distance=..8] p_damage_type 3
execute at @s[tag=gernade] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..6.5] p_damage += @s damage
execute at @s[tag=gernade] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=..2] p_damage *= 2 2
execute at @s[tag=gernade] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=6..7] p_damage /= 2 2
execute at @s[tag=gernade] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,distance=7] p_damage /= 2 2

