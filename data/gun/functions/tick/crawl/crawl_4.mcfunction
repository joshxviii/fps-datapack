tag @s add crawling
execute as @a[predicate=gun:swimming] run tag @s remove crawling
execute as @a[scores={stop_crawl=1..}] run tag @s remove crawling
execute as @a[tag=crawling] at @s rotated ~90 ~ positioned ^.4 ^ ^ positioned ~ ~.64 ~ run tp @e[tag=crawl_1,limit=1,sort=nearest,distance=..2] ~ ~ ~
execute as @e[tag=crawl_1] at @s as @p if entity @s[tag=!crawling] run tp @e[tag=crawl,limit=2,sort=nearest] ~ ~-999999 ~
execute as @e[tag=crawl_1] at @s as @p if entity @s[tag=!crawling] run kill @e[tag=crawl,limit=2,sort=nearest]
execute as @a[scores={stop_crawl=1..}] run scoreboard players reset @s stop_crawl

execute if entity @e[type=armor_stand,tag=crawl_1] run schedule function gun:tick/crawl/crawl_4 1t