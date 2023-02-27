execute run tag @s add grapple_hook
execute run tag @s add in_air

#execute on origin at @s run summon minecraft:arrow ^ ^ ^1 {life:1200s,Invisible:1b,Silent:1b,NoGravity:0b,NoAI:0b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["grapple_ride3"]}

#execute run data modify entity @e[tag=grapple_ride3,limit=1,sort=nearest] Motion set from entity @s Motion 

#ride @s mount @e[tag=grapple_ride3,limit=1,sort=nearest]

execute run function gun:tick/grappling_hook

