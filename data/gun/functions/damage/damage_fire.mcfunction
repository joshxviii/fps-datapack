execute as @p run scoreboard players operation @s fire_dis /= 10 10
execute as @p if entity @s[tag=has_sniper] run scoreboard players operation @s damage += @s fire_dis
execute as @p if entity @s[tag=has_shotgun] run scoreboard players operation @s damage -= @s fire_dis


scoreboard players operation @s p_damage += @p damage

execute if entity @s[tag=headshot] run scoreboard players operation @s headshot = @s p_damage
execute if entity @s[tag=headshot] run scoreboard players operation @s headshot /= 4 4
execute if entity @s[tag=headshot] run scoreboard players operation @s p_damage += @s headshot


#execute store result score @s health run data get entity @s Health

#execute if score @s p_damage >= @s health if entity @s[gamemode=!creative,gamemode=!spectator] run function gun:damage/damage_death

#execute as @s run tellraw @a ["",{"text":"Pending Damage: "},{"score":{"name":"@s","objective":"p_damage"}}]
#execute as @s run tellraw @a ["",{"text":"Health: "},{"score":{"name":"@s","objective":"health"}}]



execute if score @s p_damage matches 1 store success storage damage bool int 1 run damage @s 1 gun:bullet by @p from @p
execute if score @s p_damage matches 2 store success storage damage bool int 1 run damage @s 2 gun:bullet by @p from @p
execute if score @s p_damage matches 3 store success storage damage bool int 1 run damage @s 3 gun:bullet by @p from @p
execute if score @s p_damage matches 4 store success storage damage bool int 1 run damage @s 4 gun:bullet by @p from @p
execute if score @s p_damage matches 5 store success storage damage bool int 1 run damage @s 5 gun:bullet by @p from @p
execute if score @s p_damage matches 6 store success storage damage bool int 1 run damage @s 6 gun:bullet by @p from @p
execute if score @s p_damage matches 7 store success storage damage bool int 1 run damage @s 7 gun:bullet by @p from @p
execute if score @s p_damage matches 8 store success storage damage bool int 1 run damage @s 8 gun:bullet by @p from @p
execute if score @s p_damage matches 9 store success storage damage bool int 1 run damage @s 9 gun:bullet by @p from @p
execute if score @s p_damage matches 10 store success storage damage bool int 1 run damage @s 10 gun:bullet by @p from @p
execute if score @s p_damage matches 11 store success storage damage bool int 1 run damage @s 11 gun:bullet by @p from @p
execute if score @s p_damage matches 12 store success storage damage bool int 1 run damage @s 12 gun:bullet by @p from @p
execute if score @s p_damage matches 13 store success storage damage bool int 1 run damage @s 13 gun:bullet by @p from @p
execute if score @s p_damage matches 14 store success storage damage bool int 1 run damage @s 14 gun:bullet by @p from @p
execute if score @s p_damage matches 15 store success storage damage bool int 1 run damage @s 15 gun:bullet by @p from @p
execute if score @s p_damage matches 16 store success storage damage bool int 1 run damage @s 16 gun:bullet by @p from @p
execute if score @s p_damage matches 17 store success storage damage bool int 1 run damage @s 17 gun:bullet by @p from @p
execute if score @s p_damage matches 18 store success storage damage bool int 1 run damage @s 18 gun:bullet by @p from @p
execute if score @s p_damage matches 19 store success storage damage bool int 1 run damage @s 19 gun:bullet by @p from @p
execute if score @s p_damage matches 20 store success storage damage bool int 1 run damage @s 20 gun:bullet by @p from @p
execute if score @s p_damage matches 21 store success storage damage bool int 1 run damage @s 21 gun:bullet by @p from @p
execute if score @s p_damage matches 22 store success storage damage bool int 1 run damage @s 22 gun:bullet by @p from @p
execute if score @s p_damage matches 23 store success storage damage bool int 1 run damage @s 23 gun:bullet by @p from @p
execute if score @s p_damage matches 24 store success storage damage bool int 1 run damage @s 24 gun:bullet by @p from @p
execute if score @s p_damage matches 25 store success storage damage bool int 1 run damage @s 25 gun:bullet by @p from @p
execute if score @s p_damage matches 26 store success storage damage bool int 1 run damage @s 26 gun:bullet by @p from @p
execute if score @s p_damage matches 27 store success storage damage bool int 1 run damage @s 27 gun:bullet by @p from @p
execute if score @s p_damage matches 28 store success storage damage bool int 1 run damage @s 28 gun:bullet by @p from @p
execute if score @s p_damage matches 29 store success storage damage bool int 1 run damage @s 29 gun:bullet by @p from @p
execute if score @s p_damage matches 30 store success storage damage bool int 1 run damage @s 30 gun:bullet by @p from @p
execute if score @s p_damage matches 31 store success storage damage bool int 1 run damage @s 31 gun:bullet by @p from @p
execute if score @s p_damage matches 32 store success storage damage bool int 1 run damage @s 32 gun:bullet by @p from @p
execute if score @s p_damage matches 33 store success storage damage bool int 1 run damage @s 33 gun:bullet by @p from @p
execute if score @s p_damage matches 34 store success storage damage bool int 1 run damage @s 34 gun:bullet by @p from @p
execute if score @s p_damage matches 35 store success storage damage bool int 1 run damage @s 35 gun:bullet by @p from @p
execute if score @s p_damage matches 36 store success storage damage bool int 1 run damage @s 36 gun:bullet by @p from @p
execute if score @s p_damage matches 37 store success storage damage bool int 1 run damage @s 37 gun:bullet by @p from @p
execute if score @s p_damage matches 38 store success storage damage bool int 1 run damage @s 38 gun:bullet by @p from @p
execute if score @s p_damage matches 39 store success storage damage bool int 1 run damage @s 39 gun:bullet by @p from @p
execute if score @s p_damage matches 40 store success storage damage bool int 1 run damage @s 40 gun:bullet by @p from @p

execute store result score bool damage run data get storage minecraft:damage bool

execute if score bool damage matches 1 at @s at @e[type=marker,tag=hit_pos,sort=nearest,limit=1] run function gun:damage/hitbox

execute if entity @s[tag=headshot] if score bool damage matches 1 run title @p actionbar ["",{"text":"+1 Headshot","color":"white"},""]
execute if entity @s[tag=headshot] if score bool damage matches 1 run scoreboard players add @p points 1
execute if entity @s[tag=headshot] if score bool damage matches 1 run xp add @p 1 points

execute at @p run tp @e[type=marker,tag=hit_pos] ~ ~ ~
execute at @s run tp @e[type=experience_orb,distance=..3] @e[type=marker,tag=hit_pos,limit=1]

execute at @s run kill @e[type=marker,tag=hit_pos]
scoreboard players reset @s p_damage
tag @s remove p_damage
tag @s remove headshot







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