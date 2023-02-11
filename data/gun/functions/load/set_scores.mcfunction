scoreboard objectives add use_gun minecraft.used:minecraft.crossbow
scoreboard objectives add fire_gun dummy
scoreboard objectives add use_gun_2 minecraft.used:minecraft.bow
scoreboard objectives add use_gernade minecraft.used:minecraft.ender_pearl
scoreboard objectives add use_vehicle minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add charge_test dummy
scoreboard objectives add charge_time dummy
scoreboard objectives add gernade_dir_x dummy
scoreboard objectives add gernade_dir_y dummy
scoreboard objectives add gernade_dir_z dummy
scoreboard objectives add gernade_dir_x2 dummy
scoreboard objectives add gernade_dir_y2 dummy
scoreboard objectives add gernade_dir_z2 dummy
scoreboard objectives add gernade_time dummy
scoreboard objectives add hold_fire dummy
scoreboard objectives add ammo dummy
scoreboard objectives add cool_down_time dummy
scoreboard objectives add model_id dummy
scoreboard objectives add dropped_time dummy
scoreboard objectives add damage dummy
scoreboard objectives add health dummy
scoreboard objectives add def armor
scoreboard objectives add def_shot dummy
scoreboard objectives add current_health health
scoreboard objectives modify current_health displayname "HP"
scoreboard objectives setdisplay belowName current_health
scoreboard objectives setdisplay list current_health
scoreboard objectives add block_time dummy
scoreboard objectives add crawl_time dummy
scoreboard objectives add crawl_amount dummy
scoreboard objectives add stop_crawl minecraft.custom:minecraft.jump
scoreboard objectives add moving minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add p_bullet_angle dummy
scoreboard objectives add p_rotation dummy
scoreboard objectives add p_angle_dif dummy
scoreboard objectives add p_damage dummy
scoreboard objectives add headshot dummy
scoreboard objectives add p_damage_type dummy
scoreboard objectives add return_hp dummy
scoreboard objectives add 100 dummy
scoreboard players set 100 100 100
scoreboard objectives add 180 dummy
scoreboard players set 180 180 180
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
scoreboard players set n180 180 -180
scoreboard objectives add 360 dummy
scoreboard players set 360 360 360
scoreboard objectives add 465 dummy
scoreboard players set 465 465 465

forceload add 0 0 0 0
setblock 0 -64 0 minecraft:shulker_box

scoreboard objectives add selected_class dummy
scoreboard objectives add game_playing dummy

scoreboard objectives add uuid_1 dummy
scoreboard objectives add owner_id dummy
scoreboard objectives add attacker_id dummy
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
scoreboard objectives modify points displayname ["",{"text":"Leaderboard:","color":"yellow"},""]
scoreboard objectives add kill playerKillCount

scoreboard objectives add team dummy
scoreboard objectives add team_random dummy

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
scoreboard objectives add team_scores dummy [{"text":"Red VS. Blue","bold":"true","color":"yellow"}]
#scoreboard objectives setdisplay sidebar team_scores


bossbar add point_a [{"text":"[ Point A ]","color":"white","bold":"true"}]
bossbar add point_b [{"text":"[ Point B ]","color":"white","bold":"true"}]
bossbar add point_c [{"text":"[ Point C ]","color":"white","bold":"true"}]
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

scoreboard objectives add capture_point_scores dummy
scoreboard objectives modify capture_point_scores displayname [{"text":"« Capture Point »","bold":"true","color":"yellow"}]

team add point_a
team modify point_a color gray
team modify point_a prefix [{"text":"Point ","bold":"true"}]
team join point_a A
scoreboard players set A capture_point_scores -1

team add point_b
team modify point_b color gray
team modify point_b prefix [{"text":"Point ","bold":"true"}]
team join point_b B
scoreboard players set B capture_point_scores -1

team add point_c
team modify point_c color gray
team modify point_c prefix [{"text":"Point ","bold":"true"}]
team join point_c C
scoreboard players set C capture_point_scores -1



scoreboard objectives add red_players dummy
scoreboard objectives add blue_players dummy




scoreboard objectives add target_healthmax dummy
scoreboard objectives add target_health dummy
scoreboard objectives add looking_at_uuid dummy
scoreboard objectives add looking_at_old dummy

scoreboard objectives add fly_pos_x dummy
scoreboard objectives add fly_pos_y dummy
scoreboard objectives add fly_pos_z dummy

scoreboard objectives add fly_mot_y dummy

scoreboard objectives add fly_rot_x dummy
scoreboard objectives add fly_rot_y dummy
scoreboard objectives add target_rot_x2 dummy
scoreboard objectives add target_rot_x dummy
scoreboard objectives add target_rot_y dummy



scoreboard objectives add tank_rot_x dummy
scoreboard objectives add tank_h_rot_x dummy
scoreboard objectives add tank_h2_rot_x dummy
scoreboard objectives add tank_rot_y dummy




