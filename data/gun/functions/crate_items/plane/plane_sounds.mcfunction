execute unless block ~ ~-.1 ~ #gun:not_solid run scoreboard players set @s plane_sounds_2 0

execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far1 player @a[distance=2..31] ~ ~ ~ 4 1 .5
execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far2 player @a[distance=32..63] ~ ~ ~ 6 1 .5
execute as @s[tag=plane_con,scores={plane_sounds_2=1}] at @s run playsound minecraft:plane.fly_far3 player @a[distance=64..160] ~ ~ ~ 10 1 0

execute if block ~ ~-.1 ~ #gun:not_solid run scoreboard players add @s plane_sounds_2 1

#execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=2..31] player minecraft:plane.fly_far1
#execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=32..63] player minecraft:plane.fly_far2
#execute as @s[tag=plane_con,scores={grd_time=1}] at @s run stopsound @a[distance=64..160] player minecraft:plane.fly_far3

execute if entity @s[tag=plane_con,scores={plane_sounds_2=25..}] run scoreboard players set @s plane_sounds_2 0







execute if block ~ ~-.1 ~ #gun:not_solid run scoreboard players add @s plane_sounds 1

execute if entity @s[scores={plane_sounds=1}] on passengers on passengers as @p run playsound minecraft:plane.fly_close neutral @s ~ ~ ~ 1 1 0

execute if entity @s[scores={plane_sounds=520..}] run scoreboard players set @s plane_sounds 0

execute if entity @s[scores={plane_sounds=1..}] unless block ~ ~-.1 ~ #gun:not_solid on passengers on passengers as @p run stopsound @s neutral minecraft:plane.fly_close
execute if entity @s[scores={plane_sounds=1..}] unless block ~ ~-.1 ~ #gun:not_solid run scoreboard players set @s plane_sounds 0

execute run stopsound @p[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}}] neutral minecraft:plane.fly_close

