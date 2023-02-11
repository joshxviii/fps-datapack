execute if entity @s[tag=point_a] run bossbar set minecraft:point_a color white 
execute if entity @s[tag=point_b] run bossbar set minecraft:point_b color white
execute if entity @s[tag=point_c] run bossbar set minecraft:point_c color white

execute if entity @s[tag=point_a] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run scoreboard players set point_a point_a 100
execute if entity @s[tag=point_b] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run scoreboard players set point_b point_b 100
execute if entity @s[tag=point_c] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run scoreboard players set point_c point_c 100
execute if entity @s[tag=point_a] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run bossbar set minecraft:point_a value 100
execute if entity @s[tag=point_b] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run bossbar set minecraft:point_b value 100
execute if entity @s[tag=point_c] unless entity @s[tag=!claimed_red,tag=!claimed_blue,] run bossbar set minecraft:point_c value 100

execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_a] run scoreboard players set point_a point_a 0
execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_b] run scoreboard players set point_b point_b 0
execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_c] run scoreboard players set point_c point_c 0
execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_a] run bossbar set minecraft:point_a value 0
execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_b] run bossbar set minecraft:point_b value 0
execute if entity @s[tag=!claimed_red,tag=!claimed_blue,tag=point_c] run bossbar set minecraft:point_c value 0