execute as @s[tag=!vehicle,type=!#gun:doesnt_bleed] run particle minecraft:block minecraft:redstone_block ^ ^ ^-.5 0 0 0 0 4 force
execute as @s[tag=vehicle] run particle minecraft:lava ^ ^ ^-.5 0 0 0 0 4 force



execute as @s[type=armor_stand] run particle minecraft:block minecraft:hay_block ^ ^ ^-.5 0 0 0 0 6 force

execute as @s[type=slime] run particle minecraft:item_slime ^ ^ ^-.5 0 0 0 0 6 force
execute as @s[tag=!vehicle] run playsound minecraft:gun.bullet_hit player @a[distance=..64] ~ ~ ~ 1.1 .9 0
execute as @s[tag=vehicle] run playsound minecraft:block.netherite_block.break player @a[distance=..128] ~ ~ ~ 1 0.9 0
execute as @s[tag=vehicle,tag=motorcycle] run scoreboard players operation @s uuid_1 = @s attacker_id
execute as @s[tag=vehicle,tag=plane] on vehicle run scoreboard players operation @s uuid_1 = @s attacker_id

