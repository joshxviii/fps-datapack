
scoreboard players reset @e[type=minecraft:interaction,tag=rideable] passenger_id
execute as @e[type=minecraft:interaction,tag=rideable] store result score @s passenger_id run data get entity @s interaction.player[0]

#execute as @e[type=minecraft:interaction,tag=rideable] if score @s passenger_id = @p uuid_1 run ride @p mount @s

execute if entity @s[nbt=!{RootVehicle:{}}] as @e[type=minecraft:interaction,tag=rideable,sort=nearest,limit=1] on vehicle at @s run ride @p dismount


execute as @e[type=minecraft:interaction,tag=rideable] if score @s passenger_id = @p uuid_1 on vehicle run ride @p mount @s


execute as @e[type=minecraft:interaction,tag=rideable] run data remove entity @s interaction


execute as @e[type=minecraft:interaction,tag=rideable,sort=nearest,limit=1] on vehicle if entity @s[tag=motorcycle] run function gun:crate_items/motorcycle/mount
execute as @e[type=minecraft:interaction,tag=rideable,sort=nearest,limit=1] on vehicle on vehicle if entity @s[tag=plane] run function gun:crate_items/plane/mount


advancement revoke @s only gun:vehical_controls/mount_vehicle