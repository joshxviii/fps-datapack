execute if entity @s[tag=point_a] run bossbar set minecraft:point_a players @a[distance=..5]
execute if entity @s[tag=point_b] run bossbar set minecraft:point_b players @a[distance=..5]
execute if entity @s[tag=point_c] run bossbar set minecraft:point_c players @a[distance=..5]



execute if score @s red_players = @s blue_players run function gun:update/convert_standstill

execute store result score @s red_players if entity @a[gamemode=!spectator,distance=..5,team=red_team]
execute store result score @s blue_players if entity @a[gamemode=!spectator,distance=..5,team=blue_team]

execute if score @s blue_players > @s red_players run function gun:update/convert_blue
execute if score @s red_players > @s blue_players run function gun:update/convert_red








#execute as @e[tag=sonar_1] at @s if entity @s[tag=blue_sonar] at @s run effect give @a[team=!blue_team,distance=..40] minecraft:glowing 1 0 true
#execute as @e[tag=sonar_1] at @s if entity @s[tag=red_sonar] at @s run effect give @a[team=!red_team,distance=..40] minecraft:glowing 1 0 true
#
#
#
#execute as @e[type=glow_item_frame,tag=!blue_sonar,tag=sonar_2,nbt=!{ItemRotation:0b}] at @s as @p[gamemode=!creative,gamemode=!spectator] if entity @s[team=blue_team] run playsound minecraft:sonar_claim block @a[distance=..32] ~ ~ ~ 1 1
#execute as @e[type=glow_item_frame,tag=!blue_sonar,tag=sonar_2,nbt=!{ItemRotation:0b}] at @s as @p[gamemode=!creative,gamemode=!spectator] if entity @s[team=blue_team] run data merge entity @e[tag=sonar_2,sort=nearest,limit=1] {Tags:["blue_sonar","sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Team Blue]","color":"blue"}]'}}}}
#
#execute as @e[type=glow_item_frame,tag=!red_sonar,tag=sonar_2,nbt=!{ItemRotation:0b}] at @s as @p[gamemode=!creative,gamemode=!spectator] if entity @s[team=red_team] run playsound minecraft:sonar_claim block @a[distance=..32] ~ ~ ~ 1 1
#execute as @e[type=glow_item_frame,tag=!red_sonar,tag=sonar_2,nbt=!{ItemRotation:0b}] at @s as @p[gamemode=!creative,gamemode=!spectator] if entity @s[team=red_team] run data merge entity @e[tag=sonar_2,sort=nearest,limit=1] {Tags:["red_sonar","sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Team red]","color":"red"}]'}}}}
#
#
#execute as @e[tag=sonar_2,nbt=!{ItemRotation:0b}] at @s run say Hacking... 
#execute as @e[tag=sonar_2,nbt=!{ItemRotation:0b}] at @s run data merge entity @s {ItemRotation:0b}