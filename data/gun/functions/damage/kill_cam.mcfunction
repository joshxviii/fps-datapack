
execute as @a[tag=killcam] run scoreboard players add @s kill_cam_time 1



execute if score bool game_playing matches 1 as @a[scores={kill_cam_time=90..}] run function gun:damage/respawn

execute as @a[tag=killcam] run spectate @p[gamemode=!spectator] @s

execute if entity @a[tag=killcam] run schedule function gun:damage/kill_cam 3t