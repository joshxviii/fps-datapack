execute as @r[tag=randomize_teams] run function gun:commands/join_red
execute if score team_random team_random matches 1.. run scoreboard players remove team_random team_random 1
execute if score team_random team_random matches 1.. run function gun:commands/randomize_teams_2
execute if score team_random team_random matches 0 as @a[tag=randomize_teams] run function gun:commands/join_blue