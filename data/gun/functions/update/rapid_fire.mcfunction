execute if entity @s[scores={hold_fire=1}] run function gun:update/check_fire_start
execute if entity @s[scores={hold_fire=2},tag=has_m13] run function gun:update/check_fire_start

scoreboard players remove @s hold_fire 1