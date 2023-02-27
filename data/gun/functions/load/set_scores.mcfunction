scoreboard objectives add use_gun minecraft.used:minecraft.crossbow
scoreboard objectives add fire_gun dummy
scoreboard objectives add rapid_fire dummy
scoreboard objectives add rapid_fire2 dummy
scoreboard objectives add hold_fire dummy
scoreboard objectives add use_gun_2 minecraft.used:minecraft.bow
scoreboard objectives add use_gernade minecraft.used:minecraft.ender_pearl
scoreboard objectives add use_vehicle minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add use_grapple minecraft.used:minecraft.fishing_rod
scoreboard objectives add charge_test dummy
scoreboard objectives add charge_time dummy
scoreboard objectives add fire_dis dummy
scoreboard objectives add gernade_dir_x dummy
scoreboard objectives add gernade_dir_y dummy
scoreboard objectives add gernade_dir_z dummy
scoreboard objectives add gernade_dir_x2 dummy
scoreboard objectives add gernade_dir_y2 dummy
scoreboard objectives add gernade_dir_z2 dummy
scoreboard objectives add gernade_time dummy
scoreboard objectives add ammo dummy
scoreboard objectives add cool_down_time dummy
scoreboard objectives add model_id dummy
scoreboard objectives add dropped_time dummy
scoreboard objectives add damage dummy
scoreboard objectives add health dummy
scoreboard objectives add died deathCount
scoreboard objectives add def armor
scoreboard objectives add def_shot dummy
scoreboard objectives add current_health health
scoreboard objectives modify current_health displayname "HP"
#scoreboard objectives setdisplay belowName current_health
scoreboard objectives add level level
scoreboard objectives modify current_health displayname "LVL"
scoreboard objectives setdisplay belowName level
scoreboard objectives add block_time dummy
scoreboard objectives add crawl_time dummy
scoreboard objectives add crawl_amount dummy
scoreboard objectives add stop_crawl minecraft.custom:minecraft.jump
scoreboard objectives add moving minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add riding minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add p_bullet_angle dummy
scoreboard objectives add p_rotation dummy
scoreboard objectives add p_angle_dif dummy
scoreboard objectives add p_damage dummy
scoreboard objectives add headshot dummy
scoreboard objectives add p_damage_type dummy
scoreboard objectives add return_hp dummy
scoreboard objectives add 100 dummy
scoreboard players set 100 100 100

scoreboard objectives add 0 dummy
scoreboard players set 0 0 0
scoreboard objectives add 2 dummy
scoreboard players set 2 2 2
scoreboard objectives add 3 dummy
scoreboard players set 3 3 3
scoreboard objectives add 4 dummy
scoreboard players set 4 4 4
scoreboard objectives add 10 dummy
scoreboard players set 10 10 10
scoreboard objectives add n1 dummy
scoreboard players set n1 n1 -1
scoreboard objectives add 180 dummy
scoreboard players set 180 180 180
scoreboard players set n180 180 -180
scoreboard players set 18000 180 18000
scoreboard players set n18000 180 -18000
scoreboard objectives add 360 dummy
scoreboard players set 360 360 360
scoreboard players set 36000 360 36000
scoreboard objectives add 465 dummy
scoreboard players set 465 465 465

forceload add 0 0 0 0
setblock 0 -64 0 minecraft:shulker_box


kill @e[type=minecraft:text_display,tag=scoreboard]
kill @e[type=minecraft:armor_stand,tag=scoreboard]
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,0.0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_10"],text:'[{"text":"Line 10"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,0.2f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_9"],text:'[{"text":"Line 9"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,0.4f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_8"],text:'[{"text":"Line 8"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,0.6f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_7"],text:'[{"text":"Line 7"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,0.8f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_6"],text:'[{"text":"Line 6"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,1.0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_5"],text:'[{"text":"Line 5"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,1.2f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_4"],text:'[{"text":"Line 4"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,1.4f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_3"],text:'[{"text":"Line 3"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,1.6f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_2"],text:'[{"text":"Line 2"}]'}
summon text_display 0.0 32.0 0.0 {billboard:"center",background:0,transformation:{translation:[0f,1.8f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},width:1,height:1,brightness:{sky:15,block:15},view_range:0.25f,alignment:"left",Tags:["scoreboard","line_1"],text:'[{"text":"Line 1"}]'}
scoreboard objectives add scoreboard dummy
scoreboard players set line.1 scoreboard 9
scoreboard players set line.2 scoreboard 8
scoreboard players set line.3 scoreboard 7
scoreboard players set line.4 scoreboard 6
scoreboard players set line.5 scoreboard 5
scoreboard players set line.6 scoreboard 4
scoreboard players set line.7 scoreboard 3
scoreboard players set line.8 scoreboard 2
scoreboard players set line.9 scoreboard 1
scoreboard players set line.10 scoreboard 0
team add line.1
team join line.1 line.1
team modify line.1 prefix [{"translate":"space.128"}]
team modify line.1 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.2
team join line.2 line.2
team modify line.2 prefix [{"translate":"space.128"}]
team modify line.2 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.3
team join line.3 line.3
team modify line.3 prefix [{"translate":"space.128"}]
team modify line.3 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.4
team join line.4 line.4
team modify line.4 prefix [{"translate":"space.128"}]
team modify line.4 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.5
team join line.5 line.5
team modify line.5 prefix [{"translate":"space.128"}]
team modify line.5 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.6
team join line.6 line.6
team modify line.6 prefix [{"translate":"space.128"}]
team modify line.6 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.7
team join line.7 line.7
team modify line.7 prefix [{"translate":"space.128"}]
team modify line.7 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.8
team join line.8 line.8
team modify line.8 prefix [{"translate":"space.128"}]
team modify line.8 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.9
team join line.9 line.9
team modify line.9 prefix [{"translate":"space.128"}]
team modify line.9 suffix [{"translate":"space.-76"},{"translate":"space.-76"},{"bold":false,"color":"yellow","text":""}]
team add line.10
team join line.10 line.10
team modify line.10 prefix [{"translate":"space.128"}]
team modify line.10 suffix [{"translate":"space.-79"},{"translate":"space.-79"},{"bold":false,"color":"yellow","text":""}]

scoreboard objectives modify scoreboard displayname [{"bold":true,"color":"yellow","text":"« Scoreboard »"}]

#scoreboard objectives setdisplay sidebar scoreboard

bossbar add red.blue [{"text":"Red v. Blue"}]
bossbar set red.blue color green
bossbar set minecraft:red.blue style notched_6
scoreboard objectives add red.blue dummy
scoreboard players set red.blueR red.blue 0
scoreboard players set red.blueB red.blue 0
scoreboard players set red.blue red.blue 50
scoreboard players set red.blueDeathMatch red.blue 10

bossbar add timer [{"text":"Timer"}]
bossbar set minecraft:timer color yellow
scoreboard objectives add 60 dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer_s dummy
scoreboard objectives add timer_m dummy
scoreboard players set timer 60 60
scoreboard players set timer timer 0
scoreboard players set timer timer_s 0
scoreboard players set timer timer_m 0


scoreboard objectives add selected_class dummy
scoreboard objectives add class trigger
scoreboard objectives add show_class trigger
scoreboard players enable @a show_class
scoreboard players enable @a class

scoreboard objectives add game_playing dummy

scoreboard objectives add uuid_1 dummy
scoreboard objectives add owner_id dummy
scoreboard objectives add attacker_id dummy
scoreboard objectives add passenger_id dummy
scoreboard objectives add id_test dummy
scoreboard objectives add kill_cam_time dummy
scoreboard objectives add player_count dummy
scoreboard objectives add player_sort dummy
scoreboard players set player_sort player_sort 0
scoreboard objectives add order_number dummy

scoreboard objectives add vehicle_time dummy
scoreboard objectives add propeller_time dummy

scoreboard objectives add plane_sounds dummy
scoreboard objectives add plane_sounds_2 dummy

scoreboard objectives add atv_time minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add atv_time_old dummy

scoreboard objectives add fall_dis dummy
scoreboard objectives add fall_spd dummy
scoreboard objectives add health dummy
scoreboard objectives add grd_time dummy
scoreboard objectives add regen_ticks dummy


scoreboard objectives add dash_time dummy

team add noname
team modify noname nametagVisibility always
team modify noname seeFriendlyInvisibles false
team modify noname collisionRule never
team modify noname friendlyFire false

scoreboard objectives add count_down dummy
scoreboard players set count_down count_down 3


scoreboard objectives add points dummy
scoreboard objectives modify points displayname [{"text":"« Leaderboard »","bold":true,"color":"yellow"}]
scoreboard players set high.score points 0
scoreboard objectives add kill playerKillCount
scoreboard objectives modify kill displayname [{"text":"« Kills »","bold":true,"color":"yellow"}]
scoreboard players set high.score kill 0

scoreboard objectives add kill_streak playerKillCount
scoreboard players set kill_streak5 kill_streak 5



scoreboard objectives add team dummy
scoreboard objectives add team_random dummy

team add ffa "[FFA]"
team modify ffa color white
team modify ffa friendlyFire true
team modify ffa collisionRule always
team modify ffa prefix ""
team modify ffa nametagVisibility never

team add red_team
team modify red_team color red
team modify red_team friendlyFire false
team modify red_team displayName "[Red Team]"
team modify red_team prefix ""
team modify red_team collisionRule pushOwnTeam
team modify red_team nametagVisibility hideForOtherTeams
scoreboard objectives add red_kills teamkill.blue
team add blue_team
team modify blue_team color blue
team modify blue_team friendlyFire false
team modify blue_team displayName "[Blue Team]"
team modify blue_team prefix ""
team modify blue_team collisionRule pushOwnTeam
team modify blue_team nametagVisibility hideForOtherTeams
scoreboard objectives add blue_kills teamkill.red

team join blue_team BlueTeam
team join red_team RedTeam
scoreboard objectives add team_scores dummy [{"text":"Red VS. Blue","bold":true,"color":"yellow"}]
#scoreboard objectives setdisplay sidebar team_scores


bossbar add point_a [{"text":"[ Point A ]","color":"white","bold":true}]
bossbar add point_b [{"text":"[ Point B ]","color":"white","bold":true}]
bossbar add point_c [{"text":"[ Point C ]","color":"white","bold":true}]
bossbar set minecraft:point_a max 100
bossbar set minecraft:point_b max 100
bossbar set minecraft:point_c max 100
scoreboard objectives add point_a dummy
scoreboard players set point_a point_a 0
scoreboard objectives add point_b dummy
scoreboard players set point_b point_b 0
scoreboard objectives add point_c dummy
scoreboard players set point_b point_b 0
scoreboard objectives add point_rotation dummy

team add point_a
team modify point_a color gray
team modify point_a prefix [{"translate":"space.60"},{"text":"Point ","bold":true}]
team join point_a A
scoreboard players set A capture_point_scores -0

team add point_b
team modify point_b color gray
team modify point_b prefix [{"translate":"space.60"},{"text":"Point ","bold":true}]
team join point_b B
scoreboard players set B capture_point_scores -0

team add point_c
team modify point_c color gray
team modify point_c prefix [{"translate":"space.60"},{"text":"Point ","bold":true}]
team join point_c C
scoreboard players set C capture_point_scores -0



scoreboard objectives add red_players dummy
scoreboard objectives add blue_players dummy



scoreboard objectives add used_crate minecraft.used:minecraft.armor_stand

scoreboard objectives add grap_mot_x dummy
scoreboard objectives add grap_mot_y dummy
scoreboard objectives add grap_mot_z dummy
scoreboard objectives add grap_mot2_x dummy
scoreboard objectives add grap_mot2_y dummy
scoreboard objectives add grap_mot2_z dummy

scoreboard objectives add target_healthmax dummy
scoreboard objectives add target_health dummy
scoreboard objectives add looking_at_uuid dummy
scoreboard objectives add looking_at_old dummy

scoreboard objectives add acl.max dummy
scoreboard players set acl.max acl.max 10
scoreboard players set acl.duration acl.max 15

scoreboard objectives add acl dummy
scoreboard objectives add turn_acl dummy
scoreboard objectives add plane_acl2 dummy

scoreboard objectives add fly_pos_x dummy
scoreboard objectives add fly_pos_y dummy
scoreboard objectives add fly_pos_z dummy

scoreboard objectives add fly_mot_y dummy

scoreboard objectives add fly_rot_x dummy
scoreboard objectives add fly_rot_y dummy
scoreboard objectives add target_rot_x2 dummy
scoreboard objectives add target_rot_x dummy
scoreboard objectives add target_rot_y dummy
scoreboard objectives add target.rot.bool dummy


scoreboard objectives add tank_rot_x dummy
scoreboard objectives add tank_h_rot_x dummy
scoreboard objectives add tank_h2_rot_x dummy
scoreboard objectives add tank_rot_y dummy




