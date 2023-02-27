execute if entity @s[distance=5..] run playsound minecraft:gun.bullet player @a[distance=..2.6] ~ ~ ~ .15 1 0
execute if entity @a[distance=..3] run particle witch ~ ~ ~ 0.01 0.01 0.01 0 1 normal
scoreboard players add @s fire_dis 1

execute positioned ~ ~ ~ if entity @e[dx=0,type=enderman] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=enderman] as @e[dx=0,type=enderman] positioned ~.99 ~.99 ~.99 at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..32] ~ ~ ~ 1 1
execute positioned ~ ~ ~ if entity @e[dx=0,type=enderman] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=enderman] as @e[dx=0,type=enderman] positioned ~.99 ~.99 ~.99 at @s run spreadplayers ~ ~ 1 7 false @s

#execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] unless score @s team = @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking,limit=1,sort=nearest,distance=.1..] team as @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking] positioned ~.99 ~.99 ~.99 run function gun:tick/hitbox
#execute if score @s team matches 0 positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] as @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking] positioned ~.99 ~.99 ~.99 run function gun:tick/hitbox

execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] unless score @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking,limit=1] uuid_1 = @s uuid_1 run tag @s add has_hit

execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot] store result score @e[dx=0,type=!#gun:cant_shot] attacker_id run scoreboard players get @s uuid_1

#EXECUTE IF NONE PLAYER
#execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot] unless score @s damage >= @e[dx=0,limit=1,sort=nearest,type=!player,type=!#gun:cant_shot] health run scoreboard players operation @e[dx=0,type=!player,type=!#gun:cant_shot] health -= @s damage
#execute positioned ~ ~ ~ if entity @e[dx=0,tag=vehicle] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,tag=vehicle] run scoreboard players add @e[dx=0,tag=vehicle] health 3

#execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot] if score @s damage >= @e[dx=0,limit=1,sort=nearest,tag=!vehicle,type=!player,type=!#gun:cant_shot] health as @e[dx=0,type=!player,tag=!vehicle,type=!#gun:cant_shot] run kill @s[nbt=!{Invulnerable:1b}]

#execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot] if score @s damage >= @e[dx=0,limit=1,sort=nearest,tag=vehicle,type=!player,type=!#gun:cant_shot] health as @e[dx=0,type=!player,tag=vehicle,type=!#gun:cant_shot] run kill @s

#execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot] as @e[dx=0,type=!player,type=!#gun:cant_shot] store result entity @s Health float 1 run scoreboard players get @s health



execute if block ~ ~ ~ #gun:shot_past unless block ~ ~ ~ #gun:alldoors[open=false] unless block ~ ~ ~ #minecraft:slabs[type=double] unless block ~ ~.5 ~ #minecraft:slabs[type=bottom] unless block ~ ~-.5 ~ #minecraft:slabs[type=top] unless block ~ ~.5 ~ #minecraft:stairs[half=bottom] unless block ~ ~-.5 ~ #minecraft:stairs[half=top] unless entity @s[tag=has_hit] unless entity @s[tag=has_rifle,distance=102..] unless entity @s[tag=has_pistol,distance=96..] unless entity @s[tag=has_ak,distance=100..] unless entity @s[tag=has_shotgun,distance=32..] unless entity @s[tag=has_sniper,distance=196..] unless entity @s[tag=has_m13,distance=96..] unless entity @s[tag=on_turret,distance=96..] unless entity @s[tag=tank_aim_dir,distance=128..] unless entity @s[tag=on_plane,distance=196..] unless entity @s[tag=blaster_charged_max,distance=32..] positioned ^ ^ ^.33 unless entity @s[distance=256..] run function gun:update/fire
#execute if block ~ ~ ~ #gun:shot_past unless entity @s[tag=has_hit] unless entity @s[tag=has_rifle,distance=102..] unless entity @s[tag=has_pistol,distance=96..] unless entity @s[tag=has_ak,distance=100..] unless entity @s[tag=has_shotgun,distance=32..] unless entity @s[tag=has_sniper,distance=196..] unless entity @s[tag=has_m13,distance=96..] unless entity @s[tag=on_turret,distance=96..] unless entity @s[tag=tank_aim_dir,distance=128..] unless entity @s[tag=blaster_charged,distance=16..] unless entity @s[tag=blaster_charged_max,distance=32..] positioned ^ ^ ^.33 run function gun:update/fire





execute if block ~ ~ ~ minecraft:tnt align x align y align z positioned ~.5 ~ ~.5 run summon tnt ~ ~ ~ {Fuse:10s}
execute if block ~ ~ ~ minecraft:tnt run setblock ~ ~ ~ air

execute if block ~ ~ ~ minecraft:lava if block ~ ~1 ~ #gun:shot_past unless block ~ ~.25 ~ minecraft:lava run particle lava ~ ~.1 ~ 0.025 0.25 0.025 0.4 1 force
execute if block ~ ~ ~ minecraft:lava if block ~ ~1 ~ #gun:shot_past unless block ~ ~.25 ~ minecraft:lava run playsound minecraft:block.lava.pop player @a[distance=..64] ~ ~ ~ 1 2 0
execute if block ~ ~ ~ minecraft:water if block ~ ~.2 ~ #gun:shot_past unless block ~ ~.2 ~ minecraft:water run particle splash ~ ~.3 ~ 0.05 0.33 0.05 0.4 16 normal
execute if block ~ ~ ~ minecraft:water if block ~ ~.075 ~ #gun:shot_past unless block ~ ~.075 ~ minecraft:water run playsound minecraft:entity.generic.splash player @a[distance=..64] ~ ~ ~ 1.5 1.6 0
execute if block ~ ~ ~ minecraft:water if block ~ ~.5 ~ minecraft:water if entity @a[distance=..6] run particle bubble ~ ~.2 ~ 0.01 0.01 0.01 0.01 1 force


execute if block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run particle minecraft:block sand ^ ^ ^-.5 0 0 0 0 3 force
execute if block ~ ~ ~ minecraft:petrified_oak_slab[type=double] run playsound minecraft:block.sand.break block @a[distance=..32] ~ ~ ~ .12 0.8

execute if block ~ ~.5 ~ minecraft:petrified_oak_slab[type=bottom] run particle minecraft:block sand ^ ^ ^-.5 0 0 0 0 3 force
execute if block ~ ~.5 ~ minecraft:petrified_oak_slab[type=bottom] run playsound minecraft:block.sand.break block @a[distance=..32] ~ ~ ~ .12 0.8

execute if block ~ ~-.5 ~ minecraft:petrified_oak_slab[type=top] run particle minecraft:block sand ^ ^ ^-.5 0 0 0 0 3 force
execute if block ~ ~-.5 ~ minecraft:petrified_oak_slab[type=top] run playsound minecraft:block.sand.break block @a[distance=..32] ~ ~ ~ .12 0.8


execute unless block ~ ~ ~ #gun:shot_past run particle minecraft:block gray_stained_glass ^ ^ ^-.2 0 0 0 0 3 force
execute if block ~ ~ ~ #gun:glass_panes unless block ~ ~ ~.4 air unless block ~ ~ ~-.4 air unless block ~.4 ~ ~ air unless block ~-.4 ~ ~ air run fill ~ ~ ~ ~ ~ ~ air destroy

execute if block ~ ~ ~ minecraft:candle[candles=1,lit=true] unless block ~ ~ ~.4 air unless block ~ ~ ~-.4 air unless block ~.4 ~ ~ air unless block ~-.4 ~ ~ air unless block ~ ~-.425 ~ air run particle minecraft:smoke ~ ~ ~ 0 0 0 0 10 force
execute if block ~ ~ ~ minecraft:candle[candles=1,lit=true] unless block ~ ~ ~.4 air unless block ~ ~ ~-.4 air unless block ~.4 ~ ~ air unless block ~-.4 ~ ~ air unless block ~ ~-.425 ~ air run playsound minecraft:block.fire.extinguish block @a[distance=..64] ~ ~ ~ 1 2
execute if block ~ ~ ~ minecraft:candle[candles=1,lit=true] unless block ~ ~ ~.4 air unless block ~ ~ ~-.4 air unless block ~.4 ~ ~ air unless block ~-.4 ~ ~ air unless block ~ ~-.425 ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:candle[candles=1,lit=false] replace



execute if block ^.44 ^.44 ^ minecraft:target if block ^-.44 ^-.44 ^ minecraft:target run title @s actionbar ["",{"text":"+20 Bullseye","color":"white"},""]



#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run playsound minecraft:explosion.close neutral @a[distance=..48] ~ ~ ~ 3.5 1 1
#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run playsound minecraft:explosion.far neutral @a[distance=49..120] ~ ~ ~ 10.25 1 1
#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run playsound minecraft:explosion.very_far neutral @a[distance=121..220] ~ ~ ~ 12.25 1 1
#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force
#execute if entity @s[tag=tank_aim_dir] if entity @s[tag=has_hit] run summon minecraft:creeper ~ ~ ~ {DeathTime:18s,DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,NoGravity:1b,Fuse:0,power:3,ExplosionRadius:3,CustomName:"\"an explosion\""}
#
#execute if entity @s[tag=tank_aim_dir,distance=6..] run particle smoke ~ ~ ~ 0.01 0.01 0.01 0.01 1 force
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run playsound minecraft:explosion.close neutral @a[distance=..48] ~ ~ ~ 3.5 1 1
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run playsound minecraft:explosion.far neutral @a[distance=49..120] ~ ~ ~ 10.25 1 1
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run playsound minecraft:explosion.very_far neutral @a[distance=121..220] ~ ~ ~ 12.25 1 1
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.25 30 force
#execute if entity @s[tag=tank_aim_dir] unless block ~ ~ ~ #gun:shot_past run summon minecraft:creeper ~ ~ ~ {DeathTime:18s,DeathLootTable:"minecraft:empty",Silent:1b,NoAI:1b,NoGravity:1b,Fuse:0,power:3,ExplosionRadius:3,CustomName:"\"an explosion\""}





#execute positioned ~ ~ ~ if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] unless score @e[type=!#gun:cant_shot,tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] team = @s team run scoreboard players operation @e[type=!#gun:cant_shot,tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] p_damage += @s damage
#execute if score @s team matches 0 positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] as @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking] positioned ~.99 ~.99 ~.99 run scoreboard players operation @e[type=!#gun:cant_shot,tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] p_damage += @s damage

execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~.99 ~.99 ~.99 unless score @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking,limit=1] uuid_1 = @s uuid_1 run tag @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking] add p_damage 
execute positioned ~ ~ ~ if entity @e[dx=0,type=#gun:biped,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 positioned ~ ~-1.35 ~ if entity @e[dx=0,type=#gun:biped,nbt=!{Invulnerable:1b}] positioned ~.99 ~.99 ~.99 unless score @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking,limit=1] uuid_1 = @s uuid_1 run tag @e[dx=0,type=#gun:biped,tag=!is_blocking] add headshot
execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~-.99 ~-.99 ~-.99 if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] positioned ~.99 ~.99 ~.99 unless score @e[dx=0,type=!#gun:cant_shot,tag=!is_blocking,limit=1] uuid_1 = @s uuid_1 run summon marker ~ ~ ~ {Tags:["hit_pos"]}
execute positioned ~ ~ ~ if entity @e[dx=0,type=!#gun:cant_shot,nbt=!{Invulnerable:1b}] at @s as @e[tag=p_damage,sort=furthest,limit=1] run function gun:damage/damage_fire

#execute positioned ~ ~ ~ if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] unless score @s team = @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] team if score @s damage >= @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] health run damage @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] 100 gun:gun_kill by @s from @s
#execute positioned ~ ~ ~ if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] unless score @s team = @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] team unless score @s damage >= @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] health run scoreboard players operation @e[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] p_damage += @s damage


#execute positioned ~ ~ ~ if entity @a[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] run scoreboard players operation @a[gamemode=!spectator,tag=!is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] attacker_id = @s uuid_1




tag @s remove has_hit



#execute positioned ~ ~ ~ if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] run scoreboard players operation @s p_angle_dif -= @a[dx=0,limit=1,sort=nearest,distance=.1..] p_rotation
#execute if entity @s[scores={p_angle_dif=..0}] positioned ~ ~ ~ if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] run scoreboard players operation @s p_angle_dif *= n1 n1
#execute if entity @s positioned ~ ~ ~ if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[dx=0,limit=1,sort=nearest,distance=.1..] run scoreboard players operation @s p_angle_dif -= 180 180
#execute unless entity @s[scores={p_angle_dif=-65..65}] positioned ~ ~ ~ if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] as @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~.99 ~.99 ~.99 run function gun:tick/hitbox
#execute if entity @s[scores={p_angle_dif=-65..65}] positioned ~ ~ ~ if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] as @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~.99 ~.99 ~.99 run particle minecraft:block minecraft:oak_planks ^ ^ ^-.5 0 0 0 0 4 force
#execute if entity @s[scores={p_angle_dif=-65..65}] positioned ~ ~ ~ if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] as @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~.99 ~.99 ~.99 run playsound minecraft:item.shield.block player @a[distance=..64] ~ ~ ~ .8 1.25 0
#execute unless entity @s[scores={p_angle_dif=-65..65}] positioned ~ ~ ~ if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] positioned ~-.99 ~-.99 ~-.99 if entity @a[tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] run scoreboard players operation @a[gamemode=!spectator,gamemode=!creative,tag=is_blocking,dx=0,limit=1,sort=nearest,distance=.1..] p_damage += @s damage
#scoreboard players reset @s p_angle_dif