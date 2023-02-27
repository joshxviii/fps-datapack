function gun:update/update_weapon

scoreboard players operation @s rapid_fire2 = @s rapid_fire
scoreboard players operation @s rapid_fire2 %= @s hold_fire

execute if score @s rapid_fire2 matches 0 run function gun:update/check_fire_start

scoreboard players remove @s rapid_fire 1
execute if score @s rapid_fire matches ..-1 run scoreboard players reset @s rapid_fire