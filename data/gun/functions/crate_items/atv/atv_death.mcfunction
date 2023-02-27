scoreboard players set @s damage 10

execute run kill @e[type=item_display,tag=atv,limit=1,sort=nearest,distance=..2]

function gun:update/explode

kill @e[type=item,nbt={Item:{tag:{ATV:1b}}}]

execute run kill @s
