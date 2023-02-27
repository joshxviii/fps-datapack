execute at @s run summon minecraft:armor_stand ~ ~-.7 ~ {DisabledSlots:4144896,Invisible:1b,Silent:1b,NoGravity:1b,NoAI:1,Invulnerable:1b,Small:1b,Tags:["grapple_ride"]}
data merge entity @s {Motion:[0d,0d,0d],NoGravity:1b}
execute on origin at @s run summon minecraft:cod ~ ~.2 ~ {DisabledSlots:4144896,Invisible:1b,Silent:1b,NoGravity:0b,NoAI:0b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["grapple_ride2"]}

execute on origin at @s run ride @s mount @e[tag=grapple_ride2,limit=1,sort=nearest,distance=..4]


execute at @s run tp @s ~ ~.678 ~
execute run data modify entity @s Motion[1] set value -0.2d

tag @s remove in_air