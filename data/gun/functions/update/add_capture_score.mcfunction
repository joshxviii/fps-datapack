
execute as @e[type=armor_stand,tag=claimed_red] run scoreboard players add RedTeam capture_point_scores 10
execute as @e[type=armor_stand,tag=claimed_blue] run scoreboard players add BlueTeam capture_point_scores 10

execute if score BlueTeam capture_point_scores matches 500.. run function gun:commands/team_blue_win
execute if score RedTeam capture_point_scores matches 500.. run function gun:commands/team_red_win






execute if entity @e[type=armor_stand,tag=sonar_1] run schedule function gun:update/add_capture_score 10s