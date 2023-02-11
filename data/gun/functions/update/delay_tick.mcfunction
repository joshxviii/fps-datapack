execute as @a[advancements={gun:used_gun=true}] run function gun:update/update_used_gun
advancement revoke @a[advancements={gun:used_gun=true}] only gun:used_gun

execute as @a[nbt={SelectedItem:{tag:{Shoots:1b,Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function gun:update/check_ammo