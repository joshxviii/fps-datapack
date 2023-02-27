scoreboard players remove @s cool_down_time 1
execute if score @s cool_down_time matches 0 run tag @s remove on_cool_down
execute if score @s[scores={ammo=0}] cool_down_time matches 0 unless entity @s[tag=aimming] run function gun:update/cooldown_end