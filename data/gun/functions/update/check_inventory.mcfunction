execute if entity @a[nbt={SelectedItem:{tag:{Shoots:1b,Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run schedule function gun:update/delay_tick 1t
function gun:update/update_ammo

tag @a[nbt=!{Inventory:[{Slot:102b,tag:{Para:1b}}]}] remove has_para
tag @a[nbt={Inventory:[{Slot:102b,tag:{Para:1b}}]}] add has_para

tag @a[nbt=!{Inventory:[{Slot:101b,tag:{Camo:1b}}]}] remove has_camo
tag @a[nbt={Inventory:[{Slot:101b,tag:{Camo:1b}}]}] add has_camo

execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Damage:465}}]},nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] at @s run playsound minecraft:item.crossbow.quick_charge_2 player @a[distance=..64] ^ ^ ^1 .7 1.2 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["gun_unload"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] run item modify entity @s weapon.offhand gun:gun_unload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] run item modify entity @s weapon.offhand gun:blaster_swtich_1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] at @s run item replace entity @e[type=armor_stand,tag=gun_unload,limit=1,sort=nearest,distance=..0.1] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] unless score @s cool_down_time matches 1.. run function gun:update/unload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Gun:1b}}]}] at @s run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=gun_unload,limit=1,sort=nearest,distance=..0.1] weapon.mainhand
execute run kill @e[type=armor_stand,tag=gun_unload]


advancement revoke @s only gun:inventory_change