execute at @s as @e[tag=grapple_ride2,sort=nearest,limit=1,distance=..4] run tp @s ~ ~-1000 ~
execute at @s as @e[tag=grapple_ride2,sort=nearest,limit=1,distance=..4] run kill @s

advancement revoke @s only gun:used_hook