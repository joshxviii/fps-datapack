execute as @a run function gun:commands/leave_teams 
tag @a add randomize_teams
scoreboard players operation team_random team_random = player_count player_count
scoreboard players operation team_random team_random /= 2 2


execute unless score player_count player_count matches ..1 as @r[tag=randomize_teams] run function gun:commands/join_blue
execute unless score player_count player_count matches ..1 as @r[tag=randomize_teams] run function gun:commands/join_red

execute if score player_count player_count matches ..1 run tellraw @s ["",{"text":"Not enough players.","color":"red"}]

scoreboard players operation team_random team_random -= 2 2

execute unless score @r[scores={team=1..}] team matches 1 run function gun:commands/randomize_teams_2
function gun:commands/randomize_teams_3
