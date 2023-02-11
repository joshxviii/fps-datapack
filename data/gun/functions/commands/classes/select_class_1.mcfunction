execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ .5 1
scoreboard players set @s selected_class 1
tellraw @s {"text":"Changes will apply after respawn...","color":"yellow"}