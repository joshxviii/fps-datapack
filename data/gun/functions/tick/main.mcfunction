execute as @a[scores={crawl_time=1..}] run function gun:tick/crawl/crawl_1

execute as @a[scores={use_gernade=1..}] at @s run function gun:tick/gernade









execute as @a[scores={ammo=1..},nbt={SelectedItem:{tag:{Shoots:1b,Charged:0b}}}] unless entity @s[nbt={SelectedItem:{tag:{Damage:465}}}] run item modify entity @s weapon.mainhand gun:gun_use_bullet


execute as @a[nbt={SelectedItem:{tag:{Shoots:1b,Charged:1b,Aim:0b}}},predicate=gun:sneaking] run function gun:update/aim_start
execute as @a[nbt={SelectedItem:{tag:{Shoots:1b,Aim:1b}}}] unless entity @s[predicate=gun:sneaking,nbt={SelectedItem:{tag:{Charged:1b}}}] run function gun:update/aim_end



execute as @a[scores={cool_down_time=1..}] run scoreboard players remove @s cool_down_time 1
execute as @a[scores={cool_down_time=0}] run tag @s remove on_cool_down
















###### Store Each Playerr UUID AND SCAN ######

execute as @a unless entity @s[scores={uuid_1=-1000000000..1000000000}] store result score @s uuid_1 run data get entity @s UUID[0]




#execute as @e[type=minecraft:armor_stand,tag=spawn_turret] run function gun:tick/crate_items/turret
#execute as @e[tag=turret] run function gun:tick/crate_items/turret_1



#execute as @e[tag=tank] run function gun:tick/crate_items/tank
#
#execute as @e[tag=plane] run function gun:tick/crate_items/plane
#
#scoreboard players reset @a[scores={use_vehicle=1..}] use_vehicle
#execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick"}]},nbt=!{RootVehicle:{Entity:{Tags:["vehicle"]}}}] run clear @s minecraft:warped_fungus_on_a_stick{Vehicle:1b}
#execute as @e[type=item,nbt={Item:{tag:{Vehicle:1b}}}] run kill @s
#
#execute as @e[tag=vehicle,nbt={HurtTime:9s}] at @s run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 1 2 0
#execute as @e[tag=vehicle,nbt={HurtTime:9s}] at @s run execute as @s[tag=vehicle] run particle minecraft:damage_indicator ~ ~1.25 ~ 0 0 0 0 1 force




execute as @a store result score @s[tag=!is_para,tag=has_para] fall_dis run data get entity @s FallDistance 100
execute as @a[scores={fall_dis=410..},tag=!is_para,tag=has_para,gamemode=!creative] run function gun:tick/armor/parachute_start
#
#execute as @a[tag=has_camo] run function gun:tick/armor/camo























######MEGAMAN BLASTER SWAP######

#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Blaster:1b}}]}] at @s run playsound minecraft:blaster.swap player @a[distance=..32] ^ ^ ^1 1 1 0
#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Blaster:1b}}]}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["blaster_swap"]}
#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Blaster_MS:0b,Blaster:1b}}]}] at @s run item replace entity @e[type=armor_stand,tag=blaster_swap,limit=1,sort=nearest,distance=..0.1] weapon.mainhand from entity @s weapon.mainhand
#execute as @a[tag=!has_blaster_ms,nbt={Inventory:[{Slot:-106b,tag:{Blaster_MS:0b,Blaster:1b}}]}] run item replace entity @s weapon.mainhand with minecraft:bow{Blaster_MS:1b,Blaster:1b,Aim:0b,Shoots:1b,gun_damage:6,Unbreakable:1b,HideFlags:31,Enchantments:[{}],CustomModelData:100,display:{Name:'[{"text":"Blaster","italic":"false","color":"white"}]'}}
#execute as @a[tag=!has_blaster,nbt={Inventory:[{Slot:-106b,tag:{Blaster_MS:1b,Blaster:1b}}]}] run item replace entity @s weapon.mainhand with minecraft:bow{Blaster_MS:0b,Blaster:1b,Aim:0b,Shoots:1b,gun_damage:6,Unbreakable:1b,HideFlags:31,Enchantments:[{}],CustomModelData:100,display:{Name:'[{"text":"Blaster","italic":"false","color":"white"}]'}}
#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Blaster:1b}}]}] at @s run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=blaster_swap,limit=1,sort=nearest,distance=..0.1] weapon.mainhand
#execute if entity @e[type=armor_stand,tag=blaster_swap] run kill @e[type=armor_stand,tag=blaster_swap]
#
#
#
#scoreboard players remove @a[scores={charge_test=1..},advancements={gun:is_charging=false}] charge_test 1
#scoreboard players set @a[advancements={gun:is_charging=true}] charge_test 2
#
#scoreboard players add @a[scores={charge_test=1..}] charge_time 1
#scoreboard players reset @a[scores={charge_test=0}] charge_time
#scoreboard players reset @a[scores={charge_test=0}] charge_test
#
#advancement revoke @a[scores={charge_time=1..}] only gun:is_charging
#
#
#
#
#
#execute as @a[tag=has_blaster_ms,scores={charge_time=1}] at @s positioned ~ ~1.4 ~ run summon arrow ^ ^ ^1 {life:6000s,NoGravity:1b,Silent:1b,Tags:["missle","missle_con","ms_aimming"]}
#
#
#execute if entity @e[tag=missle] as @a[tag=has_blaster_ms] at @s run function gun:tick/missle
#
#execute as @a[scores={charge_time=0}] run stopsound @s player minecraft:blaster.charge_start
#execute as @a[scores={charge_time=10}] at @s[tag=has_blaster] run playsound minecraft:blaster.charge_start player @s ~ ~ ~ .65 1.3 0
#execute as @a[scores={charge_time=38}] at @s run stopsound @s player minecraft:blaster.charge_start
#execute as @a[scores={charge_time=38}] at @s[tag=has_blaster] run playsound minecraft:blaster.charge_full player @a[distance=..16] ~ ~ ~ 2 1 0






#execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Gun:1b}}}] at @s run summon minecraft:armor_stand ~ ~-1.25 ~ {DisabledSlots:4136735,NoGravity:1b,Invisible:1b,ShowArms:1b,Tags:["dropped_item"],Pose:{Body:[0f,0f,-90f],LeftArm:[12f,0f,90f]}}
#execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Gun:1b}}}] at @s positioned ~ ~-1.25 ~ run tp @e[type=armor_stand,tag=dropped_item,limit=1,sort=nearest] ~ ~ ~ ~ ~
#execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Gun:1b}}}] at @s positioned ~ ~-1.25 ~ run data modify entity @e[type=armor_stand,tag=dropped_item,limit=1,sort=nearest] HandItems[1] set from entity @s Item
#scoreboard players add @e[tag=dropped_item] dropped_time 1
#kill @e[tag=dropped_item,type=minecraft:armor_stand,scores={dropped_time=2000..}]
#execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Gun:1b}}}] at @s run kill @s
#execute as @e[type=armor_stand,tag=dropped_item,nbt=!{HandItems:[{tag:{Gun:1b}},{}]}] at @s run playsound minecraft:item.armor.equip_iron player @a[distance=..32] ~ ~ ~ .7 1.2 0
#execute as @e[type=armor_stand,tag=dropped_item,nbt=!{HandItems:[{tag:{Gun:1b}},{}]}] at @s run kill @s





