execute run stopsound @p neutral minecraft:plane.fly_close

scoreboard players set @s damage 28


execute if data entity @s Passengers on passengers on passengers run kill @s[type=!player]
execute if data entity @s Passengers on passengers run kill @s[type=!player]


execute unless data entity @s Passengers at @s run kill @e[type=!item,tag=plane,limit=1,sort=nearest]
execute unless data entity @s Passengers at @s run kill @e[type=!item,tag=plane,limit=1,sort=nearest]

function gun:update/explode

execute run kill @s
