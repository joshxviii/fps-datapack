function gun:update/update_weapon

execute as @s[tag=has_pistol] run item modify entity @s weapon.mainhand gun:aimming/pistol_start
execute as @s[tag=has_rifle] run item modify entity @s weapon.mainhand gun:aimming/rifle_start
execute as @s[tag=has_ak] run item modify entity @s weapon.mainhand gun:aimming/ak_start
execute as @s[tag=has_shotgun] run item modify entity @s weapon.mainhand gun:aimming/shotgun_start
execute as @s[tag=has_sniper] run item modify entity @s weapon.mainhand gun:aimming/sniper_start
execute as @s[tag=has_m13] run item modify entity @s weapon.mainhand gun:aimming/m13_start
execute as @s[tag=has_rpg] run item modify entity @s weapon.mainhand gun:aimming/rpg_start

tag @s add aimming

#execute as @s run item modify entity @s weapon.mainhand gun:gun_aim_start 