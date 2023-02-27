execute if score count_down count_down matches 5 if score map selected_map matches 3 positioned -669 2.06 -698 align x align z run tp @a ~ ~ ~



title @a times 0 30 0
execute if score count_down count_down matches 3.. run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"yellow","bold":true}
execute if score count_down count_down matches 2 run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"gold","bold":true}
execute if score count_down count_down matches 1 run title @a title {"score":{"name":"count_down","objective":"count_down"},"color":"red","bold":true}
execute if score count_down count_down matches 1.. as @a at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 100000 2


execute if score count_down count_down matches 1.. run schedule function gun:commands/count_down 1s
execute if score count_down count_down matches 0 if score game game_mode matches 1.. if score map selected_map matches 1.. if score timer timer matches 1.. run function gun:commands/play_game
execute if score count_down count_down matches 0 if score map selected_map matches ..0 run title @a title {"text":"Select A Map!","color":"red"}
execute if score count_down count_down matches 0 if score game game_mode matches ..0 run title @a title {"text":"Select A Gamemode!","color":"red"}
execute if score count_down count_down matches 0 if score timer timer matches ..0 run title @a title {"text":"No Time Limit set!","color":"red"}



execute if score count_down count_down matches 1.. run scoreboard players remove count_down count_down 1


