execute run bossbar set red.blue name [{"bold":true,"color":"red","score":{"name":"RedTeam","objective":"red.blue"}},{"bold":true,"color":"white","text":" | "},{"bold":true,"color":"white","score":{"name":"red.blueDeathMatch","objective":"red.blue"}},{"bold":true,"color":"white","text":" | "},{"bold":true,"color":"blue","score":{"name":"BlueTeam","objective":"red.blue"}}]

execute if score RedTeam red.blue = red.blueDeathMatch red.blue run function gun:commands/game_end
execute if score BlueTeam red.blue = red.blueDeathMatch red.blue run function gun:commands/game_end