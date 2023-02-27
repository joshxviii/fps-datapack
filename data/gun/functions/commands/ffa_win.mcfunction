title @a times 30 80 30
title @a subtitle ["",{"text":"Better luck next time!","italic":true}]
title @s subtitle ["",{"text":"Congrats!","italic":true,"bold":true}]
title @a title [{"selector":"@s","color":"yellow","bold":false},{"text":" WON!","color":"yellow","bold":false}]
title @s title [{"text":"YOU WON!","color":"gold","bold":true}]


execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 player @a ~ ~ ~ 10000 1.2 1

tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" has won the game!","color":"yellow"}]