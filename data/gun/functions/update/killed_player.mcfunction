advancement revoke @s only gun:killed_player

execute if score @s kill_streak matches ..5 run title @s actionbar [{"text":"+75 Kill","color":"white"},""]
execute if score @s kill_streak matches ..5 run scoreboard players add @s points 75


execute if score game game_mode matches 3 if entity @s[team=blue_team] run scoreboard players add BlueTeam red.blue 1
execute if score game game_mode matches 3 if entity @s[team=red_team] run scoreboard players add RedTeam red.blue 1
execute if score game game_mode matches 3 run function gun:update/update_red.blue

scoreboard players operation kill_streak kill_streak = @s kill_streak
scoreboard players operation kill_streak kill_streak %= kill_streak5 kill_streak
execute if score kill_streak kill_streak matches 0 run function gun:commands/kill_streaks/5


execute if score @s kill_streak matches 5.. run title @s actionbar [{"text":"+100 Kill Streak","color":"white"},""]
execute if score @s kill_streak matches 5.. run scoreboard players add @s points 100


