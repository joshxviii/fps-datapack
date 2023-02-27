scoreboard players operation red.blueA red.blue = RedTeam red.blue
scoreboard players operation red.blueB red.blue = BlueTeam red.blue
scoreboard players operation red.blueB red.blue += red.blueA red.blue
scoreboard players operation red.blueA red.blue *= 100 100
execute store result score red.blue red.blue run scoreboard players operation red.blueA red.blue /= red.blueB red.blue
execute store result bossbar minecraft:red.blue value run scoreboard players get red.blue red.blue

execute run bossbar set red.blue name [{"bold":true,"color":"red","score":{"name":"RedTeam","objective":"red.blue"}},{"bold":true,"color":"white","text":" | "},{"bold":true,"color":"blue","score":{"name":"BlueTeam","objective":"red.blue"}}]
