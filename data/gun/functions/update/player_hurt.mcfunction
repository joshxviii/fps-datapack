scoreboard players set @s regen_ticks 0
effect clear @s minecraft:regeneration
schedule function gun:tick/regen_ticks 1s
advancement revoke @s only gun:player_hurt