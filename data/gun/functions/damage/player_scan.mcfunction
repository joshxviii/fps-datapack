scoreboard objectives remove order_number
scoreboard players set player_count player_count 0
scoreboard players set player_sort player_sort 0
execute as @a run scoreboard players add player_count player_count 1
scoreboard objectives add order_number dummy
scoreboard players set @a order_number 0
execute as @s at @s run function gun:damage/player_scan_2
