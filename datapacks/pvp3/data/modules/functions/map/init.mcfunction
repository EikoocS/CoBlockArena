scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 3
function modules:random
scoreboard players operation $map mem = #random mem
function modules:map/sub/spawn_point

# 清理实体
kill @e[type=#modules:clean]
