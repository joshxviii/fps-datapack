function gun:update/update_weapon

execute as @s[tag=has_pistol] run item modify entity @s weapon.mainhand gun:cooldown/pistol_start
execute as @s[tag=has_rifle] run item modify entity @s weapon.mainhand gun:cooldown/rifle_start
execute as @s[tag=has_ak] run item modify entity @s weapon.mainhand gun:cooldown/ak_start
execute as @s[tag=has_shotgun] run item modify entity @s weapon.mainhand gun:cooldown/shotgun_start
execute as @s[tag=has_sniper] run item modify entity @s weapon.mainhand gun:cooldown/sniper_start
execute as @s[tag=has_m13] run item modify entity @s weapon.mainhand gun:cooldown/m13_start
execute as @s[tag=has_rpg] run item modify entity @s weapon.mainhand gun:cooldown/rpg_start
#execute as @s run item modify entity @s weapon.mainhand gun:gun_aim_start 