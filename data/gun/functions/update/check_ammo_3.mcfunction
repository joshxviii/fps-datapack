#execute at @s run summon minecraft:item ~ ~ ~ {Silent:1b,PickupDelay:0s,Tags:["ammo_check"],Item:{id:"minecraft:stone",Count:1b}}
#data modify entity @e[type=item,sort=nearest,tag=ammo_check,limit=1] Item set from entity @s SelectedItem.tag.ChargedProjectiles[]

data modify block 0 -64 0 Items[{Slot:0b}] set from entity @s SelectedItem.tag.ChargedProjectiles[]
loot give @s mine 0 -64 0 minecraft:diamond_pickaxe{drop_contents:true}
item modify entity @s weapon.mainhand gun:gun_unload


playsound minecraft:item.crossbow.loading_start player @a ~ ~ ~ .6 1.3
tellraw @s ["",{"text":"You're out of ammo","color":"red"}]