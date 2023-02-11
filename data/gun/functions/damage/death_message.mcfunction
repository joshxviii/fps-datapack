function gun:damage/player_scan

execute if entity @s[team=blue_team] run scoreboard players add @s blue_kills 1
execute if entity @s[team=red_team] run scoreboard players add @s red_kills 1