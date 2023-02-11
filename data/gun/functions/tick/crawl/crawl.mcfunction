scoreboard players add @s crawl_time 1
scoreboard players add @s crawl_amount 1
execute as @s[scores={crawl_amount=2..}] run function gun:tick/crawl/crawl_3