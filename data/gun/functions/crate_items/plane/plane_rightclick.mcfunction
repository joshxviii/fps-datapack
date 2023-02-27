execute on vehicle at @s run function gun:crate_items/plane/plane_motion
execute on vehicle unless score @s acl >= acl.duration acl.max run scoreboard players add @s acl 1
execute on vehicle store result score @s target_rot_x run data get entity @p Rotation[0] 1
execute on vehicle store result score @s target_rot_y run data get entity @p Rotation[1] 1


function gun:crate_items/plane/update_motion
execute on vehicle run function gun:crate_items/plane/plane_direction
function gun:crate_items/plane/update_direction
