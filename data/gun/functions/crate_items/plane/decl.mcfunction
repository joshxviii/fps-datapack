execute as @e[type=item,tag=plane_con] at @s unless block ~ ~-.1 ~ #gun:not_solid if score @s acl matches 1..6 run scoreboard players remove @s acl 2
execute as @e[type=item,tag=plane_con] at @s unless block ~ ~-.1 ~ #gun:not_solid if score @s acl matches 7.. run scoreboard players remove @s acl 4

execute as @e[type=item,tag=plane_con] if score @s acl matches ..0 run scoreboard players set @s acl 0

execute as @e[type=item,tag=plane_con] at @s if block ~ ~-.1 ~ #gun:not_solid if score @s acl matches 10.. run scoreboard players remove @s acl 1
execute as @e[type=item,tag=plane_con] at @s if block ~ ~-.1 ~ #gun:not_solid if score @s acl matches ..9 run scoreboard players add @s acl 1

schedule function gun:crate_items/plane/decl 10t