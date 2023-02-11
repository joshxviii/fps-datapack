
execute unless block ~ ~ ~ #gun:shot_past positioned ~ ~.5 ~ run function gun:update/capture_zone_2

execute if entity @s[tag=claimed_blue] if block ~ ~ ~ #gun:shot_past run particle minecraft:dust 0.1 0 1 1 ~ ~.5 ~ 0 .25 0 0 3 normal
execute if entity @s[tag=claimed_red] if block ~ ~ ~ #gun:shot_past run particle minecraft:dust 1 0 0 1 ~ ~.5 ~ 0 .25 0 0 3 normal
execute if entity @s[tag=!claimed_blue,tag=!claimed_red] if block ~ ~ ~ #gun:shot_past run particle minecraft:dust 1 1 1 1 ~ ~.25 ~ 0 .5 0 0 3 normal