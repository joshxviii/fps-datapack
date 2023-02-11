function gun:update/update_weapon


execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"small"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"small"}}]}}}] unless data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"small"}}] run function gun:update/check_ammo_3
execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"small"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"small"}}]}}}] if data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"small"}}] run function gun:update/check_ammo_2

execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"medium"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"medium"}}]}}}] unless data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"medium"}}] run function gun:update/check_ammo_3
execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"medium"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"medium"}}]}}}] if data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"medium"}}] run function gun:update/check_ammo_2

execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"big"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"big"}}]}}}] unless data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"big"}}] run function gun:update/check_ammo_3
execute if entity @s[nbt={SelectedItem:{tag:{ammo_type:"big"}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{tag:{ammo_type:"big"}}]}}}] if data entity @s Inventory.[{tag:{Ammo:1b,ammo_type:"big"}}] run function gun:update/check_ammo_2

execute as @s[scores={ammo=..0},nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",tag:{Ammo:1b}}]}}},tag=has_gun] run item modify entity @s weapon.mainhand gun:gun_reload