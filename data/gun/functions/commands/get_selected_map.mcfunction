execute unless score map selected_map matches 0 run tellraw @s ["",{"text":"Map ","color":"yellow"},{"score":{"name":"map","objective":"selected_map"},"color":"yellow"},{"text":" is selected.","color":"yellow"}]
execute if score map selected_map matches 0 run tellraw @s ["",{"text":"No map has been selected!","color":"red"}]

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2


#execute if score map selected_map matches 1 run tellraw @s ["",{"text":"Map "},{"score":{"name":"map","objective":"selected_map"}},{"text":" is selected."}]
