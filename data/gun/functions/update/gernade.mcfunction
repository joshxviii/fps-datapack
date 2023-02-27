

scoreboard players reset @s use_gernade
advancement revoke @s only gun:used_gernade

execute at @s run playsound minecraft:entity.ender_eye.launch player @a[distance=..32] ~ ~ ~ 1 .9 0

execute positioned ~ ~1.4 ~ run summon minecraft:item ^ ^ ^ {Tags:["gernade","update"],NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:6666s,Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:401,display:{Name:""}}},Passengers:[{id:"minecraft:ender_pearl",Item:{id:"minecraft:ender_pearl",Invulnerable:1b,HasBeenShot:0b,Count:1b,tag:{CustomModelData:100}}}]}
execute run scoreboard players operation @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] uuid_1 = @s uuid_1
execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] damage run data get entity @e[sort=nearest,limit=1,type=minecraft:ender_pearl,nbt={Item:{tag:{weapon_type:"Gernade"}}}] Item.tag.weapon_damage

#execute run data modify entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Item.tag.display.Name set from entity @e[sort=nearest,limit=1,type=minecraft:ender_pearl,nbt={Item:{tag:{weapon_type:"Gernade"}}}] Item.tag.display.Name

kill @e[sort=nearest,limit=1,type=minecraft:ender_pearl,nbt={Item:{tag:{weapon_type:"Gernade"}}}]


execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_x run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[0] 1000
execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_y run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[1] 1000
execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_z run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[2] 1000

execute at @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] rotated as @s run tp @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] ^ ^ ^0.1

execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_x2 run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[0] 1000
execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_y2 run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[1] 1000
execute store result score @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_z2 run data get entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Pos[2] 1000

execute store result entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Motion[0] double 0.02 run scoreboard players operation @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_x2 -= @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_x
execute store result entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Motion[1] double 0.019 run scoreboard players operation @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_y2 -= @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_y
execute store result entity @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] Motion[2] double 0.02 run scoreboard players operation @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_z2 -= @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] gernade_dir_z

execute run schedule function gun:update/fix_motion 2t

execute as @e[tag=gernade,type=item,sort=nearest,limit=1,nbt={Age:0s}] at @s rotated as @p run function gun:tick/gernade_2