
execute as @e[type=armor_stand,tag=spawn_turret] at @s run function gun:crate_items/turret/spawn_turret
execute as @e[type=armor_stand,tag=spawn_plane] at @s run function gun:crate_items/plane/spawn_plane
execute as @e[type=armor_stand,tag=spawn_atv] at @s run function gun:crate_items/atv/spawn_atv

kill @e[type=armor_stand,tag=crate_spawn]

scoreboard players reset @s used_crate
advancement revoke @s only gun:used_crate