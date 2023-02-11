title @a times 30 80 30
title @a[team=blue_team] subtitle ["",{"text":"Blue Team","color":"blue","italic":"true"},{"text":" Won!","italic":"true"},""]
title @a[team=blue_team] title {"text":"VICTORY!","color":"gold","bold":"true"}
title @a[team=red_team] subtitle ["",{"text":"Blue Team","color":"blue","italic":"true"},{"text":" Won...","italic":"true"},""]
title @a[team=red_team] title {"text":"FAILURE.","color":"red","bold":"true"}

execute as @a[team=blue_team] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1000 .9
execute as @a[team=red_team] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1000 .6

tellraw @a ["",{"text":"Blue Team","color":"blue","bold":"true"},{"text":" has won.","color":"yellow"}]

function fpscraft:gamemodes/end_capture_point
function gun:commands/game_end