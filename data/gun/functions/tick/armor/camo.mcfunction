

execute as @s[tag=crawling] at @s if block ~ ~ ~ #gun:hideable run effect give @s minecraft:invisibility 1 1 true
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~ ~ #gun:hideable run playsound minecraft:block.azalea_leaves.step player @s ~ ~ ~ .5 1.2
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~ ~ #gun:hideable run item modify entity @s armor.head gun:camo_active
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~ ~ #gun:hideable run item modify entity @s armor.chest gun:camo_active
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~ ~ #gun:hideable run item modify entity @s armor.feet gun:camo_active
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~ ~ #gun:hideable run item modify entity @s armor.legs gun:camo_active
execute as @s[tag=!crawling,predicate=gun:sneaking] at @s if block ~ ~1 ~ #gun:hideable run effect give @s minecraft:invisibility 1 1 true
execute as @s[tag=!crawling,predicate=gun:sneaking,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~1 ~ #gun:hideable run playsound minecraft:block.azalea_leaves.step player @s ~ ~ ~ .5 1.2
execute as @s[tag=!crawling,predicate=gun:sneaking,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~1 ~ #gun:hideable run item modify entity @s armor.head gun:camo_active
execute as @s[tag=!crawling,predicate=gun:sneaking,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~1 ~ #gun:hideable run item modify entity @s armor.chest gun:camo_active
execute as @s[tag=!crawling,predicate=gun:sneaking,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~1 ~ #gun:hideable run item modify entity @s armor.feet gun:camo_active
execute as @s[tag=!crawling,predicate=gun:sneaking,nbt={Inventory:[{Slot:101b,tag:{Hiding:0b}}]}] at @s if block ~ ~1 ~ #gun:hideable run item modify entity @s armor.legs gun:camo_active


execute as @s[tag=crawling] at @s unless block ~ ~ ~ #gun:hideable run effect clear @s minecraft:invisibility
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~ ~ #gun:hideable run item modify entity @s armor.head gun:camo_deactive
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~ ~ #gun:hideable run item modify entity @s armor.chest gun:camo_deactive
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~ ~ #gun:hideable run item modify entity @s armor.feet gun:camo_deactive
execute as @s[tag=crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~ ~ #gun:hideable run item modify entity @s armor.legs gun:camo_deactive


execute as @s[tag=!crawling] at @s unless entity @s[predicate=gun:sneaking] run effect clear @s minecraft:invisibility
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless entity @s[predicate=gun:sneaking] run item modify entity @s armor.head gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless entity @s[predicate=gun:sneaking] run item modify entity @s armor.chest gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless entity @s[predicate=gun:sneaking] run item modify entity @s armor.feet gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless entity @s[predicate=gun:sneaking] run item modify entity @s armor.legs gun:camo_deactive


execute as @s[tag=!crawling] at @s unless block ~ ~1 ~ #gun:hideable run effect clear @s minecraft:invisibility
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~1 ~ #gun:hideable run item modify entity @s armor.head gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~1 ~ #gun:hideable run item modify entity @s armor.chest gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~1 ~ #gun:hideable run item modify entity @s armor.feet gun:camo_deactive
execute as @s[tag=!crawling,nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]}] at @s unless block ~ ~1 ~ #gun:hideable run item modify entity @s armor.legs gun:camo_deactive







execute as @s[nbt={Inventory:[{Slot:101b,tag:{Hiding:1b}}]},scores={moving=0..8}] at @s run particle minecraft:block grass ~ ~.25 ~ 0.25 0.25 0.25 0 1 normal
execute as @s[scores={moving=0..}] at @s run scoreboard players reset @s moving

