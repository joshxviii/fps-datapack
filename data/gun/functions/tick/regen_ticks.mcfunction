scoreboard players add @a[scores={regen_ticks=..6}] regen_ticks 1
effect give @a[scores={regen_ticks=7},nbt=!{Health:20.0f}] minecraft:regeneration 2 1 true
execute if entity @a[nbt=!{Health:20.0f}] run schedule function gun:tick/regen_ticks 1s