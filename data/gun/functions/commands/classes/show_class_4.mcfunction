execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ .5 1
tellraw @s ["\uE204\n",{"text":"Def: 18","color":"white"},"\n",{"translate":"space.32"},{"text":"\uE000 Pistol","hoverEvent":{"action":"show_text","contents":[{"text":"\uE100","color":"white"},{"text":"32","color":"gold"}]}},{"text":"\uE005 M13","hoverEvent":{"action":"show_text","contents":[{"text":"\uE101","color":"white"},{"text":"16","color":"gold"}]}},{"text":"\uE006 RPG","hoverEvent":{"action":"show_text","contents":[{"text":"\uE102","color":"white"},{"text":"4","color":"gold"}]}},"\n",{"text":"Atk: 20","color":"white"},"\n\n",{"text":"\uE200\uF801\uE201\uF801\uE202","clickEvent":{"action":"run_command","value":"/trigger show_class set -1"}},{"translate":"space.-32"},{"text":"Back","color":"red","bold":"true"},{"translate":"space.12"},{"text":"\uE200\uF801\uE201\uF801\uE201\uF801\uE202","clickEvent":{"action":"run_command","value":"/trigger class set 4"}},{"translate":"space.-43"},{"text":"Select","color":"green","bold":"true"},"\n"]