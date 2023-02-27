execute as @a[name=Ryic] run damage @e[limit=1,sort=nearest,tag=explosion_kill] 100 gun:explosion by @s from @s
execute run tag @e[limit=1,sort=nearest,tag=explosion_kill] remove explosion_kill

execute if entity @e[type=!#gun:cant_shot,tag=explosion_kill] run function gun:update/explosion_kill