execute as @s[tag=plane,predicate=!gun:on_vehicle] at @s as @e[type=item,tag=plane_con,sort=nearest,limit=1] run function gun:crate_items/plane/plane_death

execute as @s[tag=motorcycle,predicate=!gun:on_vehicle] at @s run function gun:crate_items/motorcycle/motorcycle_death
#execute as @s[tag=motorcycle,predicate=gun:on_vehicle] on vehicle if entity @s[nbt={OnGround:0b,NoAI:1b}] run data merge entity @s {NoAI:0b}
#execute as @s[tag=motorcycle,predicate=gun:on_vehicle] on vehicle if entity @s[nbt={OnGround:1b,NoAI:0b}] run data merge entity @s {NoAI:1b}
