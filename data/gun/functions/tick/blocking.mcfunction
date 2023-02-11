execute as @a[tag=can_dash,advancements={gun:is_blocking=true}] run function gun:update/dash

advancement revoke @s[advancements={gun:is_blocking=true}] only gun:is_blocking

execute as @s store result score @s p_rotation run data get entity @s Rotation[0]
scoreboard players set @s[advancements={gun:is_blocking=false}] block_time 2
schedule function gun:tick/blocking_1 1t