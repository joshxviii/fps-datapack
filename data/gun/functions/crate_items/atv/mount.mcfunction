execute at @s run playsound minecraft:vehicle.engine_start player @a[distance=..18] ~ ~ ~ 4 .87 0
execute store result score @s uuid_1 on passengers at @s run scoreboard players get @p uuid_1

schedule function gun:crate_items/atv/atv_1t 1t