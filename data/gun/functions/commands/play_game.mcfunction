
title @a times 0 40 0
title @a subtitle
title @a title {"text":"GO!","color":"green","bold":"true"}

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100000 0.6


execute unless score game game_mode matches 0 run gamemode adventure @a


execute if score game game_mode matches 1 run function gun:commands/randomize_teams
execute if score map selected_map matches 1 run function fpscraft:fpscraft_maps/setup_map1
execute if score map selected_map matches 2 run function fpscraft:fpscraft_maps/setup_map2


execute unless score map selected_map matches 0 as @a run function gun:commands/equip_class
execute if score game game_mode matches 1 run schedule function fpscraft:gamemodes/setup_capture_point 5s



scoreboard players set bool game_playing 1