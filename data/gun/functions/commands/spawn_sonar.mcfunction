



execute align y positioned ~ ~-1.5 ~ run summon minecraft:armor_stand ~ ~1.5 ~ {ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:317}}],Marker:1b,DisabledSlots:2039583,Invisible:1b,NoAI:1b,NoGravity:1b,Health:1.0f,Tags:["sonar","sonar_1"],Silent:1b,Invulnerable:1b,Passengers:[{id:"minecraft:ender_pearl",Invulnerable:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Item:{id:"minecraft:ender_pearl",Invulnerable:1b,HasBeenShot:0b,Count:1b,tag:{CustomModelData:0}},Tags:["sonar","sonar_3"]}]}
#execute at @e[tag=sonar_1,sort=nearest,limit=1] align x align z positioned ~.5 ~ ~.5 rotated as @s rotated ~90 0 positioned ^.707 ^ ^ align x align z positioned ~.5 ~ ~.5 facing entity @e[tag=sonar_1,sort=nearest,limit=1] feet rotated ~90 0 positioned ^1 ^ ^ rotated ~-90 0 run tp @s ~ ~ ~ ~ ~

#execute as @e[tag=sonar_1,sort=nearest,limit=1,y_rotation=-5..5] run summon minecraft:glow_item_frame ~ ~ ~-1 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Unclaimed]","color":"white"}]'}}}}
#execute as @e[tag=sonar_1,sort=nearest,limit=1,y_rotation=175..185] run summon minecraft:glow_item_frame ~ ~ ~1 {Facing:3b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Unclaimed]","color":"white"}]'}}}}
#execute as @e[tag=sonar_1,sort=nearest,limit=1,y_rotation=-95..-85] run summon minecraft:glow_item_frame ~-1 ~ ~ {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Unclaimed]","color":"white"}]'}}}}
#execute as @e[tag=sonar_1,sort=nearest,limit=1,y_rotation=85..95] run summon minecraft:glow_item_frame ~1 ~ ~ {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b,Tags:["sonar","sonar_2"],Item:{id:armor_stand,Count:1b,tag:{CustomModelData:305,display:{Name:'[{"text":"[Unclaimed]","color":"white"}]'}}}}

execute run fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_concrete destroy

execute if entity @e[tag=sonar_1] run schedule function gun:tick/capture_zone 1t
execute if entity @e[tag=sonar_1] run schedule function gun:update/add_capture_score 10s