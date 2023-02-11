execute if entity @s[tag=on_cool_down] run advancement revoke @s only gun:used_gun

execute if entity @s[advancements={gun:used_gun=true}] run function gun:update/used_gun