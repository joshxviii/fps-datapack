
execute as @a[scores={hold_fire=1..}] run function gun:update/rapid_fire
execute if entity @a[scores={hold_fire=1..}] run schedule function gun:update/delay_tick_2t 1t