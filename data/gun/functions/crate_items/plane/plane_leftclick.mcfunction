
execute run scoreboard players set @s damage 10

execute run scoreboard players set @s rapid_fire 3
execute run scoreboard players set @s hold_fire 2

execute if score @s rapid_fire matches 1.. run function gun:update/rapid_fire

execute run advancement revoke @s only gun:vehical_controls/leftclick_in_vehicle