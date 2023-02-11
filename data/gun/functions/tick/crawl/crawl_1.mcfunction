advancement revoke @s only gun:not_sneaking
scoreboard players add @s crawl_time 1
execute as @s[scores={crawl_time=18..}] run scoreboard players reset @s crawl_amount
execute as @s[scores={crawl_time=18..}] run scoreboard players reset @s crawl_time

