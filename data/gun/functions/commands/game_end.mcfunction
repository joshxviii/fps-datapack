execute unless score game game_mode matches 1 if score BlueTeam red.blue > RedTeam red.blue run function gun:commands/team_blue_win
execute unless score game game_mode matches 1 if score BlueTeam red.blue < RedTeam red.blue run function gun:commands/team_red_win
execute unless score game game_mode matches 1 if score BlueTeam red.blue = RedTeam red.blue run function gun:commands/tied_game

scoreboard players set high.score kill 0
execute if score game game_mode matches 1 as @a if score @s kill > high.score kill run scoreboard players operation high.score kill = @s kill 
execute if score game game_mode matches 1 as @a if score @s kill > high.score kill run scoreboard players operation high.score kill = @s kill 
scoreboard players set high.score points 0
execute if score game game_mode matches 1 as @a if score @s points > high.score points run scoreboard players operation high.score points = @s points 
execute if score game game_mode matches 1 as @a if score @s points > high.score points run scoreboard players operation high.score points = @s points 

execute as @a if score @s points = high.score points run function gun:commands/ffa_win

scoreboard players reset BlueTeam red.blue
scoreboard players reset RedTeam red.blue

team join noname @a
scoreboard players set @a team 0
#gamemode spectator @a


scoreboard players reset timer timer
bossbar set timer visible false
bossbar set red.blue visible false

execute if score game game_mode matches 1 run function fpscraft:gamemodes/end_ffa
execute if score game game_mode matches 2 run function fpscraft:gamemodes/end_capture_point
execute if score game game_mode matches 3 run function fpscraft:gamemodes/end_team_deathmatch

scoreboard players set map selected_map 0
scoreboard players set game game_mode 0


worldborder set 10000
tellraw @a ["",{"text":"The game has ended...","color":"red"}]

#scoreboard objectives setdisplay sidebar
#scoreboard objectives setdisplay list

scoreboard players set bool game_playing 0

schedule clear gun:damage/kill_cam
execute as @a[scores={kill_cam_time=1..}] run function gun:damage/respawn

execute as @a run schedule function gun:commands/return_to_spawn_time 5s

setworldspawn 0 25 0 0