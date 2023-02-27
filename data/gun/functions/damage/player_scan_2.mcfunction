execute run scoreboard players add player_sort player_sort 1

#execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["gun_name"]}
#execute run data modify entity @e[tag=gun_name,limit=1,sort=nearest] CustomName set from entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] SelectedItem.tag.display.Name

#execute if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id as @a[sort=arbitrary,limit=1,scores={order_number=..0}] run title @s actionbar ["",{"text":"+45 Kill","color":"white"},""]
#execute if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id as @a[sort=arbitrary,limit=1,scores={order_number=..0}] run scoreboard players add @s points 45


#execute if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id if entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] run tellraw @a ["",{"selector":"@s"},{"text":" was shot by ","color":"white"},{"selector":"@a[sort=arbitrary,limit=1,scores={order_number=..0}]"},{"text":" using ","color":"white"},{"text":"[","color":"aqua"},{"selector":"@e[tag=gun_name,limit=1,sort=nearest]"},{"text":"]","color":"aqua"}]

#execute if score bool game_playing matches 1 if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id if entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] at @a[sort=arbitrary,limit=1,scores={order_number=..0}] run spawnpoint @s ~ ~ ~ 
#execute if entity @s[gamemode=!adventure] run gamemode adventure @s
#execute if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id run damage @s 100 gun:gun_kill by @a[sort=arbitrary,limit=1,scores={order_number=..0}] from @a[sort=arbitrary,limit=1,scores={order_number=..0}]

#execute if entity @s[scores={p_damage_type=1}] if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id if entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] run tellraw @a ["",{"selector":"@s"},{"text":" was shot by ","color":"white"},{"selector":"@a[sort=arbitrary,limit=1,scores={order_number=..0}]"},{"text":" using ","color":"white"},{"text":"[","color":"aqua"},{"selector":"@e[tag=gun_name,limit=1,sort=nearest]"},{"text":"]","color":"aqua"}]
#execute if entity @s[scores={p_damage_type=2}] if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id if entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] run tellraw @a ["",{"selector":"@s"},{"text":" was blown up by ","color":"white"},{"selector":"@a[sort=arbitrary,limit=1,scores={order_number=..0}]"},{"text":" using ","color":"white"},{"text":"[","color":"aqua"},{"text":"RPG","color":"white"},{"text":"]","color":"aqua"}]
#execute if entity @s[scores={p_damage_type=3}] if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id if entity @a[sort=arbitrary,limit=1,scores={order_number=..0}] run tellraw @a ["",{"selector":"@s"},{"text":" was blown up by ","color":"white"},{"selector":"@a[sort=arbitrary,limit=1,scores={order_number=..0}]"},{"text":" using a ","color":"white"},{"text":"[","color":"aqua"},{"text":"Gernade","color":"white"},{"text":"]","color":"aqua"}]

#execute if score player_sort player_sort <= player_count player_count if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s attacker_id run spectate @a[sort=arbitrary,limit=1,scores={order_number=..0}]


#execute if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s uuid_1 as @e[type=!#gun:cant_shot,distance=..8] at @s run tellraw @a ["",{"selector":"@s"},{"score":{"name":"@s","objective":"uuid"}}]


execute if score @a[sort=arbitrary,limit=1,scores={order_number=..0}] uuid_1 = @s uuid_1 as @e[type=!#gun:cant_shot,distance=..8] at @s run function gun:damage/damage_explosion

execute run scoreboard players operation @a[sort=arbitrary,limit=1,scores={order_number=..0}] order_number = player_sort player_sort
execute unless score player_sort player_sort = player_count player_count run function gun:damage/player_scan_2