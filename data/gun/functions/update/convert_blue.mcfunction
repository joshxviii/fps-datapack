

execute if entity @s[tag=claimed_red,tag=point_a] run bossbar set minecraft:point_a color white 
execute if entity @s[tag=claimed_red,tag=point_b] run bossbar set minecraft:point_b color white
execute if entity @s[tag=claimed_red,tag=point_c] run bossbar set minecraft:point_c color white
execute if entity @s[tag=!claimed_red,tag=point_a] run bossbar set minecraft:point_a color blue 
execute if entity @s[tag=!claimed_red,tag=point_b] run bossbar set minecraft:point_b color blue
execute if entity @s[tag=!claimed_red,tag=point_c] run bossbar set minecraft:point_c color blue





execute if entity @s[tag=claimed_red,tag=point_a] if score point_a point_a matches 0.. run scoreboard players remove point_a point_a 1
execute if entity @s[tag=claimed_red,tag=point_b] if score point_b point_b matches 0.. run scoreboard players remove point_b point_b 1
execute if entity @s[tag=claimed_red,tag=point_c] if score point_c point_c matches 0.. run scoreboard players remove point_c point_c 1

execute if entity @s[tag=claimed_red,tag=point_a] if score point_a point_a matches ..0 run function gun:update/unclaimed
execute if entity @s[tag=claimed_red,tag=point_b] if score point_b point_b matches ..0 run function gun:update/unclaimed
execute if entity @s[tag=claimed_red,tag=point_c] if score point_c point_c matches ..0 run function gun:update/unclaimed

execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_a] if score point_a point_a matches ..100 run scoreboard players add point_a point_a 1
execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_b] if score point_b point_b matches ..100 run scoreboard players add point_b point_b 1
execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_c] if score point_c point_c matches ..100 run scoreboard players add point_c point_c 1

execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_a] if score point_a point_a matches 100.. run function gun:update/claimed_blue
execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_b] if score point_b point_b matches 100.. run function gun:update/claimed_blue
execute if entity @s[tag=!claimed_blue,tag=!claimed_red,tag=point_c] if score point_c point_c matches 100.. run function gun:update/claimed_blue





execute if entity @s[tag=point_a] store result bossbar minecraft:point_a value run scoreboard players get point_a point_a
execute if entity @s[tag=point_b] store result bossbar minecraft:point_b value run scoreboard players get point_b point_b
execute if entity @s[tag=point_c] store result bossbar minecraft:point_c value run scoreboard players get point_c point_c