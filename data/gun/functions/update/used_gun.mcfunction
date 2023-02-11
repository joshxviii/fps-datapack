
function gun:update/update_weapon


execute if entity @s[scores={ammo=1..}] run tag @s add on_cool_down
execute if entity @s[scores={ammo=1..}] store result score @s cool_down_time run data get entity @s SelectedItem.tag.fire_rate

execute store result score @s damage run data get entity @s SelectedItem.tag.weapon_damage
execute if entity @s[scores={ammo=1..}] run function gun:update/check_fire_start




schedule function gun:update/delay_tick 1t




execute as @s[tag=has_ak] run scoreboard players set @s hold_fire 2
execute as @s[tag=has_m13] run scoreboard players set @s hold_fire 3

schedule function gun:update/delay_tick_2t 1t
