title @a times 30 80 30
title @a subtitle ["",{"text":"No winner!","italic":true},""]
title @a title {"text":"TIED!","color":"yellow","bold":true}


execute as @a at @s run playsound minecraft:particle.soul_escape player @s ~ ~ ~ 10000 .7 1

tellraw @a ["",{"text":"The game was a tie!","color":"yellow"}]