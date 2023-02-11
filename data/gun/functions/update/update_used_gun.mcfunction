execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_pistol] run item modify entity @s weapon.mainhand gun:gun_use_pistol
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_rifle] run item modify entity @s weapon.mainhand gun:gun_use_rifle
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_ak] run item modify entity @s weapon.mainhand gun:gun_use_ak
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_shotgun] run item modify entity @s weapon.mainhand gun:gun_use_shotgun
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_sniper] run item modify entity @s weapon.mainhand gun:gun_use_sniper
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_m13] run item modify entity @s weapon.mainhand gun:gun_use_m13
execute if entity @s[gamemode=!creative,scores={ammo=1..},tag=has_rpg] run item modify entity @s weapon.mainhand gun:gun_use_rpg

function gun:update/update_ammo

execute if entity @s[gamemode=!creative,scores={ammo=1..}] run item modify entity @s weapon.mainhand gun:gun_use_bullet
execute if entity @s[gamemode=!creative,scores={ammo=0}] run item modify entity @s weapon.mainhand gun:gun_unload