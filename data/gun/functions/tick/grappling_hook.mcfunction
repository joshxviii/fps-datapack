execute as @e[type=armor_stand,tag=grapple_ride] at @s positioned ~ ~ ~ unless entity @e[type=fishing_bobber,distance=..1.5] run kill @s

execute as @e[tag=grapple_ride2,nbt={OnGround:1b}] run kill @s




execute as @e[type=fishing_bobber,tag=grapple_hook,tag=in_air,nbt={OnGround:1b}] run function gun:update/grappling_hook_activate
execute as @e[type=minecraft:fishing_bobber,tag=grapple_hook,tag=in_air] at @s if block ~ ~ ~.126 #gun:grappleable run function gun:update/grappling_hook_activate
execute as @e[type=minecraft:fishing_bobber,tag=grapple_hook,tag=in_air] at @s if block ~ ~ ~-.126 #gun:grappleable run function gun:update/grappling_hook_activate
execute as @e[type=minecraft:fishing_bobber,tag=grapple_hook,tag=in_air] at @s if block ~.126 ~ ~ #gun:grappleable run function gun:update/grappling_hook_activate
execute as @e[type=minecraft:fishing_bobber,tag=grapple_hook,tag=in_air] at @s if block ~-.126 ~ ~ #gun:grappleable run function gun:update/grappling_hook_activate



execute as @e[type=fishing_bobber,tag=grapple_hook] on origin at @s as @e[type=fishing_bobber,tag=grapple_hook,limit=1,sort=nearest] run function gun:tick/grappling_hook2
execute if entity @e[type=fishing_bobber,tag=grapple_hook] run schedule function gun:tick/grappling_hook 2t




