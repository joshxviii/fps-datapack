team join red_team @s
scoreboard players set @s team 1
tellraw @a ["",{"selector":"@s","bold":"true"},{"text":" has joined ","color":"white"},{"text":"Team Red","color":"red","bold":"true"},{"text":"!","color":"white"}]
tag @s remove randomize_teams