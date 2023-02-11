execute as @e[type=item,tag=gernade,nbt={OnGround:1b}] run scoreboard players add @s gernade_time 1
execute as @e[type=item,tag=gernade] at @s if block ~ ~ ~ water run scoreboard players add @s gernade_time 1

execute as @e[type=item,tag=gernade,scores={gernade_time=28..}] at @s run function gun:update/explode
execute as @e[type=item,tag=gernade,scores={gernade_time=28..}] at @s run kill @s

execute if entity @e[type=item,tag=gernade] run schedule function gun:tick/gernade_2 1t