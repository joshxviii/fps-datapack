execute as @s at @s run tp @s ~ ~-20 ~
execute run function fpscraft:commands/map_respawn
execute run gamemode adventure @s
execute as @s[nbt={previousPlayerGameType:0}] run gamemode survival @s
execute as @s run tag @s remove killcam
execute as @s run scoreboard players reset @s kill_cam_time