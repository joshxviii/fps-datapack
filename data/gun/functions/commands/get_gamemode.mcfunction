execute if score game game_mode matches 1 run tellraw @s ["",{"text":"Selected Gamemode: ","color":"yellow"},{"color":"yellow","text":"Free For All."}]
execute if score game game_mode matches 2 run tellraw @s ["",{"text":"Selected Gamemode: ","color":"yellow"},{"color":"yellow","text":"Capture Point."}]
execute if score game game_mode matches 3 run tellraw @s ["",{"text":"Selected Gamemode: ","color":"yellow"},{"color":"yellow","text":"Team Deathmatch."}]
execute if score game game_mode matches 0 run tellraw @s ["",{"text":"No gamemode has been selected!","color":"red"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2