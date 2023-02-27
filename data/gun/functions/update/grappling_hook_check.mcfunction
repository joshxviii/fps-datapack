advancement revoke @s only gun:used_grapple
scoreboard players set @s use_grapple 0

execute if entity @s[nbt={SelectedItem:{tag:{weapon_type:"Grapple"}}}] at @s as @e[type=fishing_bobber,limit=1,sort=arbitrary] run function gun:update/grappling_hook_check2
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{weapon_type:"Grapple"}}]}] at @s as @e[type=fishing_bobber,limit=1,sort=arbitrary] run function gun:update/grappling_hook_check2
