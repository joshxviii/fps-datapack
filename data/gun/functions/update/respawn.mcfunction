
scoreboard players reset @s died
scoreboard players set @s kill_streak 0

#execute if score bool game_playing matches 0 run function gun:commands/return_to_spawn

execute if score bool game_playing matches 1 at @s run function gun:damage/spectate

execute if score bool game_playing matches 1 run tellraw @s ["\uE204\n",{"text":"\uE200\uF801\uE201\uF801\uE201\uF801\uE201\uF801\uE201\uF801\uE201\uF801\uE202","clickEvent":{"action":"run_command","value":"/trigger show_class set -1"}},{"translate":"space.-82"},{"text":"Change Class","color":"white","bold":true},"\n"]
#execute if score bool game_playing matches 1 run function fpscraft:commands/map_respawn