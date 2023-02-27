bossbar set minecraft:timer name [""]
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true

schedule function gun:commands/timer/timer_count 1s