execute if entity @s[tag=aimming] unless entity @s[nbt={SelectedItem:{tag:{Blaster:1b}}}] unless entity @s[tag=on_plane] positioned ^ ^-.25 ^1.1 run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0 0 force
execute unless entity @s[tag=aimming] unless entity @s[nbt={SelectedItem:{tag:{Blaster:1b}}}] unless entity @s[tag=on_plane] positioned ^-.3 ^-.25 ^1.1 run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0 0 force
execute positioned ^ ^ ^1.25 run particle minecraft:flash ~ ~ ~ 0 0 0 0 0 force

execute if entity @s[tag=aimming] if entity @s[tag=has_shotgun] positioned ^ ^-.25 ^1.1 run particle minecraft:bubble_pop ~ ~ ~ 0.125 0.125 0.125 0 5 force
execute unless entity @s[tag=aimming] if entity @s[tag=has_shotgun] positioned ^-.3 ^-.25 ^1.1 run particle minecraft:bubble_pop ~ ~ ~ 0.125 0.125 0.125 0 5 force

execute if entity @s[tag=on_plane] at @e[type=donkey,tag=plane_1,sort=nearest,limit=1] positioned ^1 ^1.3 ^1 run particle minecraft:bubble_pop ~ ~ ~ 0.125 0.125 0.125 0 5 force
execute if entity @s[tag=on_plane] at @e[type=donkey,tag=plane_1,sort=nearest,limit=1] positioned ^-1 ^1.3 ^1 run particle minecraft:bubble_pop ~ ~ ~ 0.125 0.125 0.125 0 5 force


execute if entity @s[tag=has_rpg] positioned ^ ^-.25 ^-.25 run particle minecraft:bubble_pop ~ ~ ~ 0.15 0.15 0.15 0 5 force
execute if entity @s[tag=has_rpg] positioned ^ ^-.25 ^-.25 run particle minecraft:large_smoke ~ ~ ~ 0.125 0.125 0.125 0 2 force


execute if entity @s[tag=tank_aim_dir] positioned ^ ^ ^ run particle minecraft:bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 8 force
execute if entity @s[tag=tank_aim_dir] positioned ^ ^ ^ run particle minecraft:smoke ~ ~ ~ 0 0 0 0.07 8 force


execute if entity @s[tag=has_pistol] positioned ^ ^ ^ run playsound minecraft:gun.fire_small player @a[distance=..40] ^ ^ ^.1 3 1.1 1
execute if entity @s[tag=has_rifle] positioned ^ ^ ^ run playsound minecraft:gun.fire_small player @a[distance=..40] ^ ^ ^.1 3 .8 1
execute if entity @s[tag=has_ak] positioned ^ ^ ^ run playsound minecraft:gun.fire_fast player @a[distance=..40] ^ ^ ^.1 3 1.4 1
execute if entity @s[tag=has_shotgun] positioned ^ ^ ^ run playsound minecraft:gun.fire_big player @a[distance=..40] ^ ^ ^.1 3 .9 1
execute if entity @s[tag=has_sniper] positioned ^ ^ ^ run playsound minecraft:gun.fire_power player @a[distance=..40] ^ ^ ^.1 3 1 1
execute if entity @s[tag=has_m13] positioned ^ ^ ^ run playsound minecraft:gun.fire_fast player @a[distance=..40] ^ ^ ^.1 3 1.8 1
execute if entity @s[tag=has_rpg] positioned ^ ^ ^ run playsound minecraft:gun.launch player @a[distance=..40] ^ ^ ^.1 2 .8 1
execute if entity @s[tag=tank_aim_dir] positioned ^ ^ ^ run playsound minecraft:tank.fire_close player @a[distance=..40] ^ ^ ^.1 4 1 1
execute if entity @s[tag=on_plane] positioned ^ ^ ^ run playsound minecraft:gun.fire_fast player @a[distance=..50] ^ ^ ^.1 3 .5 1


execute if entity @s[tag=has_pistol] positioned ^ ^ ^ run playsound minecraft:gun.fire_small_far player @a[distance=30..200] ^ ^ ^6 8 1.3 0
execute if entity @s[tag=has_rifle] positioned ^ ^ ^ run playsound minecraft:gun.fire_small_far player @a[distance=30..200] ^ ^ ^6 8 1 0
execute if entity @s[tag=has_ak] positioned ^ ^ ^ run playsound minecraft:gun.fire_small_far player @a[distance=30..250] ^ ^ ^6 8 1.6 0
execute if entity @s[tag=has_shotgun] positioned ^ ^ ^ run playsound minecraft:gun.fire_big_far player @a[distance=30..250] ^ ^ ^6 10 .9 0
execute if entity @s[tag=has_sniper] positioned ^ ^ ^ run playsound minecraft:gun.fire_power_far player @a[distance=30..300] ^ ^ ^6 20 1 0
execute if entity @s[tag=has_m13] positioned ^ ^ ^ run playsound minecraft:gun.fire_small_far player @a[distance=30..250] ^ ^ ^6 8 2 0
execute if entity @s[tag=has_rpg] positioned ^ ^ ^ run playsound minecraft:tank.fire_far player @a[distance=30..250] ^ ^ ^6 8 2 0
execute if entity @s[tag=tank_aim_dir] positioned ^ ^ ^ run playsound minecraft:tank.fire_far player @a[distance=65..300] ^ ^ ^6 9.75 1 0
execute if entity @s[tag=on_plane] positioned ^ ^ ^ run playsound minecraft:gun.fire_small_far player @a[distance=65..300] ^ ^ ^6 9.75 .6 .1




execute store result score @s p_bullet_angle run data get entity @s Rotation[0]
execute run scoreboard players operation @s p_angle_dif = @s p_bullet_angle



execute if entity @s[nbt={SelectedItem:{tag:{Projectile:1b}}}] run summon area_effect_cloud ~ ~ ~ {Tags:["projectile"],Particle:"block air",Duration:100s,Age:0s,}
execute if entity @s[nbt={SelectedItem:{tag:{Projectile:1b}}}] run tp @e[type=minecraft:area_effect_cloud,tag=projectile,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if entity @s[nbt={SelectedItem:{tag:{Projectile:1b}}}] run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=projectile,limit=1,sort=nearest] uuid_1 = @s uuid_1
execute if entity @s[nbt={SelectedItem:{tag:{Projectile:1b}}}] run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=projectile,limit=1,sort=nearest] damage = @s damage

execute if entity @s[tag=has_shotgun] rotated ~4.5 ~-3.5 run function gun:update/fire_start_check
execute if entity @s[tag=has_shotgun] rotated ~4.5 ~3.5 run function gun:update/fire_start_check
execute if entity @s[tag=has_shotgun] rotated ~-4.5 ~-3.5 run function gun:update/fire_start_check
execute if entity @s[tag=has_shotgun] rotated ~-4.5 ~3.5 run function gun:update/fire_start_check

execute if entity @s[tag=on_plane] positioned ^.2 ^ ^ run function gun:update/fire_start_check
execute if entity @s[tag=on_plane] positioned ^-.2 ^ ^ run function gun:update/fire_start_check


execute if entity @s[tag=has_projectile] run function gun:update/fire_projectile

execute if entity @s[tag=!has_projectile,tag=!on_plane] run function gun:update/fire_start_check













#execute as @s[nbt={SelectedItem:{tag:{Blaster:1b}}}] at @s run data merge entity @e[type=arrow,limit=1,sort=nearest,tag=!missle] {life:6000s,Tags:["blaster_bolt"]}
#execute as @s[tag=has_blaster] if entity @e[tag=blaster_bolt,limit=1,sort=nearest,nbt={crit:1b}] run tag @s add blaster_charged_max
#execute as @s[tag=has_blaster] if entity @e[tag=blaster_bolt,limit=1,sort=nearest,nbt={crit:0b}] run tag @s add blaster_charged
#
#execute as @s[tag=blaster_charged] run playsound minecraft:blaster.bolt player @a[distance=..32] ~ ~ ~ 2 1 0
#execute as @s[tag=blaster_charged] positioned ^ ^ ^-1 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^10000000 0.0000025 0 force
#execute as @s[tag=blaster_charged_max] run playsound minecraft:blaster.big_bolt player @a[distance=..32] ~ ~ ~ 2 1 0
#execute as @s[tag=blaster_charged_max] positioned ^ ^ ^-1 run particle minecraft:sneeze ~ ~ ~ ^ ^ ^10000000 0.00000075 0 force
#execute as @s[tag=blaster_charged_max] run scoreboard players set @s damage 8







#kill @e[tag=blaster_bolt,limit=1,sort=nearest]
#tag @s[tag=blaster_charged_max] remove blaster_charged_max
#tag @s[tag=blaster_charged] remove blaster_charged

