title @a times 2 24 2
title @s subtitle [{"score":{"name":"@s","objective":"kill_streak"}},{"text":" Kill Streak!","color":"white"},""]
title @s title [""]

tellraw @a [{"selector":"@s"},{"text":" has a ","color":"yellow"},{"score":{"name":"@s","objective":"kill_streak"},"color":"yellow"},{"text":" kill streak!","color":"yellow"}]

execute if score @s kill_streak matches 5 run loot give @s loot gun:fpsitems/crates/plane