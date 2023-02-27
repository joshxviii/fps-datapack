execute as @s run function gun:update/update_weapon

execute as @s[tag=has_pistol] run item modify entity @s weapon.mainhand gun:unload/pistol_start
execute as @s[tag=has_rifle] run item modify entity @s weapon.mainhand gun:unload/rifle_start
execute as @s[tag=has_ak] run item modify entity @s weapon.mainhand gun:unload/ak_start
execute as @s[tag=has_shotgun] run item modify entity @s weapon.mainhand gun:unload/shotgun_start
execute as @s[tag=has_sniper] run item modify entity @s weapon.mainhand gun:unload/sniper_start
execute as @s[tag=has_m13] run item modify entity @s weapon.mainhand gun:unload/m13_start
execute as @s[tag=has_rpg] run item modify entity @s weapon.mainhand gun:unload/rpg_start
