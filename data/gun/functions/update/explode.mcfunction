
execute at @s run playsound minecraft:explosion.close neutral @a[distance=..50] ~ ~ ~ 5.5 1 1
execute at @s run playsound minecraft:explosion.far neutral @a[distance=50..120] ~ ~ ~ 12.25 1 1
execute at @s run playsound minecraft:explosion.very_far neutral @a[distance=120..220] ~ ~ ~ 12.25 1 1


execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force


execute at @s run scoreboard players operation @e[distance=..8] attacker_id = @s uuid_1




execute run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute run scoreboard players set @e[type=!#gun:cant_shot,distance=..8] p_damage_type 2
execute run scoreboard players operation @e[type=!#gun:cant_shot,distance=..8] p_damage += @s damage
execute run scoreboard players operation @e[type=!#gun:cant_shot,distance=..1.5] p_damage += 2 2
execute run scoreboard players operation @e[type=!#gun:cant_shot,distance=4..8] p_damage /= 2 2
execute run scoreboard players operation @e[type=!#gun:cant_shot,distance=6..8] p_damage /= 2 2



execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["explosion_pos"]}
execute unless score @s uuid_1 matches 0 run function gun:damage/player_scan
kill @e[type=marker,tag=explosion_pos]

#execute as @e[type=!#gun:cant_shot,distance=..8] if score @s p_damage >= @s health run tag @s add explosion_kill

#execute if entity @e[type=!#gun:cant_shot,distance=..8,tag=explosion_kill] run function gun:damage/damage_explosion