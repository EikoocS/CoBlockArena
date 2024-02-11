scoreboard objectives remove jump
scoreboard objectives add jump minecraft.custom:minecraft.jump "跳跃触发"

scoreboard objectives remove heartbeat
scoreboard objectives add heartbeat dummy "心跳触发"

scoreboard players set $mutation_last mem 0
function modules:mutation/sub/off

bossbar add modules:mutation ""
bossbar set modules:mutation style progress
bossbar set modules:mutation max 10000
bossbar set modules:mutation value 0
bossbar set modules:mutation visible true
