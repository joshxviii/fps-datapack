execute as @a if score @s rapid_fire matches 0.. at @s run function gun:update/delay_tick_1t

execute as @a if score @s rapid_fire matches 0.. run schedule function gun:update/rapid_fire 1t