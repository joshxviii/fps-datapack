execute store result score @s ammo run data get entity @s SelectedItem.tag.Damage
execute run scoreboard players operation @s ammo *= 100 100
execute run scoreboard players operation @s ammo /= 465 465
execute run scoreboard players operation @s ammo -= 100 100
execute run scoreboard players operation @s ammo *= n1 n1