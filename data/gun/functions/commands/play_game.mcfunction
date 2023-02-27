
title @a times 0 40 0
#title @a subtitle
title @a title {"text":"GO!","color":"green","bold":true}

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100000 0.6
scoreboard players reset @a points
scoreboard players reset @a kill
scoreboard players reset @s kill_streak
scoreboard players reset player_count player_count
execute as @a run scoreboard players add player_count player_count 1


execute if score game game_mode matches 1 run function gun:commands/ffa_teams
execute if score game game_mode matches 2.. run function gun:commands/randomize_teams

execute unless score game game_mode matches 0 run gamemode adventure @a
execute unless score map selected_map matches 0 as @a run function gun:commands/equip_class


execute if score game game_mode matches 1 run schedule function fpscraft:gamemodes/setup_ffa 5s
execute if score game game_mode matches 2 run schedule function fpscraft:gamemodes/setup_capture_point 5s
execute if score game game_mode matches 3 run schedule function fpscraft:gamemodes/setup_team_deathmatch 5s



execute if score map selected_map matches 1 run function fpscraft:fpscraft_maps/setup_map1
execute if score map selected_map matches 2 run function fpscraft:fpscraft_maps/setup_map2
execute if score map selected_map matches 3 run function fpscraft:fpscraft_maps/setup_map3

execute if score game game_mode matches 1 run scoreboard objectives setdisplay list points

function gun:commands/timer/start



scoreboard players set @a kill_cam_time 0
tag @a[tag=killcam] remove killcam

scoreboard players set bool game_playing 1