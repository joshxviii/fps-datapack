scoreboard players remove timer timer 1
scoreboard players operation timer timer_s = timer timer
scoreboard players operation timer timer_s %= timer 60
scoreboard players operation timer timer_m = timer timer
scoreboard players operation timer timer_m /= timer 60

execute if score timer timer_s matches ..9 run bossbar set minecraft:timer name [{"bold":true,"score":{"name":"timer","objective":"timer_m"}},{"bold":true,"text":":0"},{"bold":true,"score":{"name":"timer","objective":"timer_s"}}]
execute if score timer timer_s matches 10.. run bossbar set minecraft:timer name [{"bold":true,"score":{"name":"timer","objective":"timer_m"}},{"bold":true,"text":":"},{"bold":true,"score":{"name":"timer","objective":"timer_s"}}]

execute if score bool game_playing matches 1 if score timer timer matches 1.. run schedule function gun:commands/timer/timer_count 1s
execute if score bool game_playing matches 1 if score timer timer matches ..0 run schedule function gun:commands/timer/time_up 1s