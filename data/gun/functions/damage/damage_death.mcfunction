execute at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ .2 .33 .2 0 45 force
execute at @s run playsound minecraft:entity.player.death player @a[distance=..32] ~ ~ ~ 1 1 .1

#execute at @s run function gun:damage/spectate
execute unless score @s attacker_id matches 0 run function gun:damage/player_scan