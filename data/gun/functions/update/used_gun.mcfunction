
function gun:update/update_weapon


execute if entity @s[scores={ammo=1..}] run tag @s add on_cool_down
execute if entity @s[scores={ammo=1..}] store result score @s cool_down_time run data get entity @s SelectedItem.tag.fire_rate
execute if entity @s[scores={ammo=1..}] unless entity @s[tag=aimming] run function gun:update/cooldown_start

execute store result score @s damage run data get entity @s SelectedItem.tag.weapon_damage

execute as @s[tag=has_ak] run scoreboard players set @s rapid_fire 3
execute as @s[tag=has_ak] run scoreboard players set @s hold_fire 2
execute as @s[tag=has_m13] run scoreboard players set @s rapid_fire 3
execute as @s[tag=has_m13] run scoreboard players set @s hold_fire 1


execute if entity @s[scores={ammo=1..}] unless score @s rapid_fire matches 1.. run function gun:update/check_fire_start

execute if entity @s[scores={ammo=1..}] if score @s rapid_fire matches 1.. run function gun:update/rapid_fire

schedule function gun:update/delay_tick 1t


