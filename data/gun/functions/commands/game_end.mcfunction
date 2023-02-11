team join noname @a
gamemode spectator @a
clear @a

scoreboard players set map selected_map 0
scoreboard players set game game_mode 0
spawnpoint @a 0 25 0

worldborder set 10000
tellraw @a ["",{"text":"The game has ended...","color":"red"}]

function fpscraft:gamemodes/end_capture_point

schedule function gun:commands/return_to_spawn 5s

scoreboard players set bool game_playing 0