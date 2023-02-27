

scoreboard players operation @s def_shot = @s def
scoreboard players operation @s def_shot *= 3 3
scoreboard players operation @s def_shot *= @s p_damage
scoreboard players operation @s p_damage *= 100 100
scoreboard players operation @s p_damage -= @s def_shot
scoreboard players operation @s p_damage /= 100 100

execute store result score @s health run data get entity @s Health

execute if score @s p_damage >= @s health if entity @s[gamemode=!creative,gamemode=!spectator] run function gun:damage/damage_death

#execute as @s run tellraw @a ["",{"text":"Pending Damage: "},{"score":{"name":"@s","objective":"p_damage"}}]
#execute as @s run tellraw @a ["",{"text":"Health: "},{"score":{"name":"@s","objective":"health"}}]



execute if score @s p_damage matches 1 run damage @s 1 gun:bullet
execute if score @s p_damage matches 2 run damage @s 2 gun:bullet
execute if score @s p_damage matches 3 run damage @s 3 gun:bullet
execute if score @s p_damage matches 4 run damage @s 4 gun:bullet
execute if score @s p_damage matches 5 run damage @s 5 gun:bullet
execute if score @s p_damage matches 6 run damage @s 6 gun:bullet
execute if score @s p_damage matches 7 run damage @s 7 gun:bullet
execute if score @s p_damage matches 8 run damage @s 8 gun:bullet
execute if score @s p_damage matches 9 run damage @s 9 gun:bullet
execute if score @s p_damage matches 10 run damage @s 10 gun:bullet
execute if score @s p_damage matches 11 run damage @s 11 gun:bullet
execute if score @s p_damage matches 12 run damage @s 12 gun:bullet
execute if score @s p_damage matches 13 run damage @s 13 gun:bullet
execute if score @s p_damage matches 14 run damage @s 14 gun:bullet
execute if score @s p_damage matches 15 run damage @s 15 gun:bullet
execute if score @s p_damage matches 16 run damage @s 16 gun:bullet
execute if score @s p_damage matches 17 run damage @s 17 gun:bullet
execute if score @s p_damage matches 18 run damage @s 18 gun:bullet
execute if score @s p_damage matches 19 run damage @s 19 gun:bullet
execute if score @s p_damage matches 20 run damage @s 20 gun:bullet
execute if score @s p_damage matches 21 run damage @s 21 gun:bullet
execute if score @s p_damage matches 22 run damage @s 22 gun:bullet
execute if score @s p_damage matches 23 run damage @s 23 gun:bullet
execute if score @s p_damage matches 24 run damage @s 24 gun:bullet
execute if score @s p_damage matches 25 run damage @s 25 gun:bullet
execute if score @s p_damage matches 26 run damage @s 26 gun:bullet
execute if score @s p_damage matches 27 run damage @s 27 gun:bullet
execute if score @s p_damage matches 28 run damage @s 28 gun:bullet
execute if score @s p_damage matches 29 run damage @s 29 gun:bullet
execute if score @s p_damage matches 30 run damage @s 30 gun:bullet
execute if score @s p_damage matches 31 run damage @s 31 gun:bullet
execute if score @s p_damage matches 32 run damage @s 32 gun:bullet
execute if score @s p_damage matches 33 run damage @s 33 gun:bullet
execute if score @s p_damage matches 34 run damage @s 34 gun:bullet
execute if score @s p_damage matches 35 run damage @s 35 gun:bullet
execute if score @s p_damage matches 36 run damage @s 36 gun:bullet
execute if score @s p_damage matches 37 run damage @s 37 gun:bullet
execute if score @s p_damage matches 38 run damage @s 38 gun:bullet
execute if score @s p_damage matches 39 run damage @s 39 gun:bullet
execute if score @s p_damage matches 40 run damage @s 40 gun:bullet

scoreboard players reset @s p_damage







#execute if score .temp p_damage matches 1 run attribute @s minecraft:generic.max_health base set 1
#execute if score .temp p_damage matches 2 run attribute @s minecraft:generic.max_health base set 2
#execute if score .temp p_damage matches 3 run attribute @s minecraft:generic.max_health base set 3
#execute if score .temp p_damage matches 4 run attribute @s minecraft:generic.max_health base set 4
#execute if score .temp p_damage matches 5 run attribute @s minecraft:generic.max_health base set 5
#execute if score .temp p_damage matches 6 run attribute @s minecraft:generic.max_health base set 6
#execute if score .temp p_damage matches 7 run attribute @s minecraft:generic.max_health base set 7
#execute if score .temp p_damage matches 8 run attribute @s minecraft:generic.max_health base set 8
#execute if score .temp p_damage matches 9 run attribute @s minecraft:generic.max_health base set 9
#execute if score .temp p_damage matches 10 run attribute @s minecraft:generic.max_health base set 10
#execute if score .temp p_damage matches 11 run attribute @s minecraft:generic.max_health base set 11
#execute if score .temp p_damage matches 12 run attribute @s minecraft:generic.max_health base set 12
#execute if score .temp p_damage matches 13 run attribute @s minecraft:generic.max_health base set 13
#execute if score .temp p_damage matches 14 run attribute @s minecraft:generic.max_health base set 14
#execute if score .temp p_damage matches 15 run attribute @s minecraft:generic.max_health base set 15
#execute if score .temp p_damage matches 16 run attribute @s minecraft:generic.max_health base set 16
#execute if score .temp p_damage matches 17 run attribute @s minecraft:generic.max_health base set 17
#execute if score .temp p_damage matches 18 run attribute @s minecraft:generic.max_health base set 18
#execute if score .temp p_damage matches 19 run attribute @s minecraft:generic.max_health base set 19
#execute if score .temp p_damage matches 20 run attribute @s minecraft:generic.max_health base set 20
#execute if score .temp p_damage matches 21 run attribute @s minecraft:generic.max_health base set 21
#execute if score .temp p_damage matches 22 run attribute @s minecraft:generic.max_health base set 22
#execute if score .temp p_damage matches 23 run attribute @s minecraft:generic.max_health base set 23
#execute if score .temp p_damage matches 24 run attribute @s minecraft:generic.max_health base set 24
#execute if score .temp p_damage matches 25 run attribute @s minecraft:generic.max_health base set 25
#execute if score .temp p_damage matches 26 run attribute @s minecraft:generic.max_health base set 26
#execute if score .temp p_damage matches 27 run attribute @s minecraft:generic.max_health base set 27
#execute if score .temp p_damage matches 28 run attribute @s minecraft:generic.max_health base set 28
#execute if score .temp p_damage matches 29 run attribute @s minecraft:generic.max_health base set 29
#execute if score .temp p_damage matches 30 run attribute @s minecraft:generic.max_health base set 30
#execute if score .temp p_damage matches 31 run attribute @s minecraft:generic.max_health base set 31
#execute if score .temp p_damage matches 32 run attribute @s minecraft:generic.max_health base set 32
#execute if score .temp p_damage matches 33 run attribute @s minecraft:generic.max_health base set 33
#execute if score .temp p_damage matches 34 run attribute @s minecraft:generic.max_health base set 34
#execute if score .temp p_damage matches 35 run attribute @s minecraft:generic.max_health base set 35
#execute if score .temp p_damage matches 36 run attribute @s minecraft:generic.max_health base set 36
#execute if score .temp p_damage matches 37 run attribute @s minecraft:generic.max_health base set 37
#execute if score .temp p_damage matches 38 run attribute @s minecraft:generic.max_health base set 38
#execute if score .temp p_damage matches 39 run attribute @s minecraft:generic.max_health base set 39
#execute if score .temp p_damage matches 40 run attribute @s minecraft:generic.max_health base set 40
#execute if score .temp p_damage matches 1.. run effect give @s wither 1 1 true