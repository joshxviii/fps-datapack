tag @a[scores={block_time=1..},predicate=gun:shield/shield_useable_mainhand] add is_blocking
tag @a[scores={block_time=1..},predicate=gun:shield/shield_useable_offhand] add is_blocking
scoreboard players remove @a[scores={block_time=1..}] block_time 1
execute if entity @a[scores={block_time=1..}] run schedule function gun:tick/blocking_1 1t
tag @a[scores={block_time=..0}] remove is_blocking
tag @a[predicate=!gun:shield/shield_useable_mainhand,predicate=!gun:shield/shield_useable_offhand] remove is_blocking
scoreboard players reset @a[scores={block_time=..0}] block_time