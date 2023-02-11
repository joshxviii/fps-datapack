team join blue_team @s
scoreboard players set @s team 2
tellraw @a ["",{"selector":"@s","bold":"true"},{"text":" has joined ","color":"white"},{"text":"Team Blue","color":"blue","bold":"true"},{"text":"!","color":"white"}]
tag @s remove randomize_teams