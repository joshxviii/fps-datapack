
execute as @e[type=armor_stand,tag=claimed_red] run scoreboard players add RedTeam red.blue 3
execute as @e[type=armor_stand,tag=claimed_blue] run scoreboard players add BlueTeam red.blue 3
execute run function gun:update/update_red.blue

execute if entity @e[type=armor_stand,tag=sonar_1] run schedule function gun:update/add_capture_score 5s