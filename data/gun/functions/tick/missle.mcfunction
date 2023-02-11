#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] at @e[tag=ms_aimming,tag=missle,limit=1,sort=nearest] rotated as @s run summon area_effect_cloud ^ ^ ^15 {Duration:2s,Tags:["missle_dir"]}
#
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=missle_dir,limit=1,sort=nearest] store result score @s missle_dir_x run data get entity @s Pos[0] -1
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=missle_dir,limit=1,sort=nearest] store result score @s missle_dir_y run data get entity @s Pos[1] -1
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=missle_dir,limit=1,sort=nearest] store result score @s missle_dir_z run data get entity @s Pos[2] -1
#
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result score @s missle_dir_x run data get entity @s Pos[0] -1
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result score @s missle_dir_y run data get entity @s Pos[1] -1
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result score @s missle_dir_z run data get entity @s Pos[2] -1
#
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result entity @s Motion[0] double .01 run scoreboard players operation @s missle_dir_x -= @e[tag=missle_dir,limit=1,sort=nearest] missle_dir_x
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result entity @s Motion[1] double .025 run scoreboard players operation @s missle_dir_y -= @e[tag=missle_dir,limit=1,sort=nearest] missle_dir_y
#execute as @s[scores={charge_time=1..100}] at @s[tag=has_blaster_ms] as @e[tag=ms_aimming,limit=1,sort=nearest] store result entity @s Motion[2] double .01 run scoreboard players operation @s missle_dir_z -= @e[tag=missle_dir,limit=1,sort=nearest] missle_dir_z
#execute as @s[tag=has_blaster_ms] unless entity @s[scores={charge_time=1..100}] at @e[tag=ms_aimming,tag=missle,limit=1,sort=nearest] rotated as @s run summon area_effect_cloud ^ ^ ^30 {Duration:2s,Tags:["missle_dir_fire"]}
#execute as @s[tag=has_blaster_ms] unless entity @s[scores={charge_time=1..100}] run data merge entity @e[tag=ms_aimming,limit=1,sort=nearest] {Tags:["missle","missle_con"],NoGravity:1b}
#
#execute as @e[tag=missle_dir_fire,limit=1,sort=nearest] store result score @s missle_dir_x run data get entity @s Pos[0] -1
#execute as @e[tag=missle_dir_fire,limit=1,sort=nearest] store result score @s missle_dir_y run data get entity @s Pos[1] -1
#execute as @e[tag=missle_dir_fire,limit=1,sort=nearest] store result score @s missle_dir_z run data get entity @s Pos[2] -1
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result score @s missle_dir_x run data get entity @s Pos[0] -1
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result score @s missle_dir_y run data get entity @s Pos[1] -1
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result score @s missle_dir_z run data get entity @s Pos[2] -1
#
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result entity @s Motion[0] double .07 run scoreboard players operation @s missle_dir_x -= @e[tag=missle_dir_fire,limit=1,sort=nearest] missle_dir_x
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result entity @s Motion[1] double .07 run scoreboard players operation @s missle_dir_y -= @e[tag=missle_dir_fire,limit=1,sort=nearest] missle_dir_y
#execute as @e[tag=!ms_aimming,tag=missle_con,limit=1,sort=nearest] store result entity @s Motion[2] double .07 run scoreboard players operation @s missle_dir_z -= @e[tag=missle_dir_fire,limit=1,sort=nearest] missle_dir_z
#
#execute as @e[tag=!ms_aimming,tag=missle_con] run tag @s remove missle_con

