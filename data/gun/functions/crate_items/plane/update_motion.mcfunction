execute as @e[type=item,tag=plane_con] if score @s acl matches 0.. at @s run function gun:crate_items/plane/plane_motion
execute as @e[type=item,tag=plane_con] unless score @s target.rot.bool matches 1 run function gun:crate_items/plane/plane_direction

execute as @e[type=item,tag=plane_con] at @s run function gun:crate_items/plane/plane_sounds

execute as @e[type=item,tag=plane_con] at @s if entity @e[type=item,tag=plane_con,scores={acl=10..},distance=.1..5] run function gun:crate_items/plane/plane_death

execute as @e[type=item,tag=plane_con] at @s if block ~ ~ ~ water run function gun:crate_items/plane/plane_death


execute as @e[type=item,tag=plane_con] if score @s acl matches 0.. run schedule function gun:crate_items/plane/update_motion 1t
execute as @e[type=item,tag=plane_con] unless score @s target.rot.bool matches 1 run schedule function gun:crate_items/plane/update_motion 1t