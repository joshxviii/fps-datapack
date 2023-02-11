execute if entity @s[scores={kill=1..}] run title @s actionbar ["",{"text":"+45 Kill","color":"white"},""]
execute if entity @s[scores={kill=1..}] run scoreboard players add @s points 45
scoreboard players set @s[scores={kill=1..}] kill 0