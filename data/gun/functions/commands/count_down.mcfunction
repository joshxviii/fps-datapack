
title @a times 0 30 0
execute if score count_down count_down matches 3.. run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"yellow","bold":"true"}
execute if score count_down count_down matches 2 run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"gold","bold":"true"}
execute if score count_down count_down matches 1 run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"red","bold":"true"}
execute if score count_down count_down matches 1.. as @a at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 100000 2


execute if score count_down count_down matches 1.. run schedule function gun:commands/count_down 1s
execute if score count_down count_down matches 0 run function gun:commands/play_game

execute if score count_down count_down matches 1.. run scoreboard players remove count_down count_down 1