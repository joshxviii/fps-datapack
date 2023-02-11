execute if entity @s[nbt={SelectedItem:{tag:{Glass:1b}}}] run execute at @s anchored eyes run particle minecraft:block green_stained_glass ^ ^ ^1.25 .15 .15 .15 0 8 normal
execute if entity @s[nbt={SelectedItem:{tag:{Glass:1b}}}] run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1.4 0
execute if entity @s[nbt={SelectedItem:{tag:{Glass:1b}}}] run item modify entity @s weapon.mainhand gun:break_bottle_stack
execute if entity @s[nbt={SelectedItem:{tag:{Glass:1b}}}] unless entity @s[nbt={SelectedItem:{tag:{Broken:1b}}}] run loot give @s loot gun:random_chance/broken_bottle


advancement revoke @s only gun:used_meele