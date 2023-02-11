#execute at @s run summon minecraft:item ~ ~ ~ {Silent:1b,PickupDelay:0s,Tags:["ammo_check"],Item:{id:"minecraft:stone",Count:1b}}
#data modify entity @e[type=item,sort=nearest,tag=ammo_check,limit=1] Item set from entity @s SelectedItem.tag.ChargedProjectiles[]

data modify block 0 -64 0 Items[{Slot:0b}] set from entity @s SelectedItem.tag.ChargedProjectiles[]
loot give @s mine 0 -64 0 minecraft:diamond_pickaxe{drop_contents:true}
item modify entity @s weapon.mainhand gun:gun_reload

execute if data entity @s[nbt={SelectedItem:{tag:{ammo_type:"small"}}}] Inventory.[{tag:{Ammo:1b,ammo_type:"small"}}] run clear @s minecraft:arrow{ammo_type:"small"} 1
execute if data entity @s[nbt={SelectedItem:{tag:{ammo_type:"medium"}}}] Inventory.[{tag:{Ammo:1b,ammo_type:"medium"}}] run clear @s minecraft:arrow{ammo_type:"medium"} 1
execute if data entity @s[nbt={SelectedItem:{tag:{ammo_type:"big"}}}] Inventory.[{tag:{Ammo:1b,ammo_type:"big"}}] run clear @s minecraft:arrow{ammo_type:"big"} 1