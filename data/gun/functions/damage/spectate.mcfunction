gamemode spectator @s
tag @s add killcam
tellraw @s {"text":"Click here to change class...","color":"yellow","clickEvent":{"action":"run_command","value":"/function gun:commands/classes/select_class_menu"}}
function gun:damage/kill_cam