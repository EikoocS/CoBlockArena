function pvp:class/refresh_enabled_scoreboard

# 获取未启用职业中，最多的未被选择轮数
scoreboard players set #max mem 0
execute if score #enabled1 class matches 0 run scoreboard players operation #max mem > $1 statClassSelectCycle
execute if score #enabled2 class matches 0 run scoreboard players operation #max mem > $2 statClassSelectCycle
execute if score #enabled3 class matches 0 run scoreboard players operation #max mem > $3 statClassSelectCycle
execute if score #enabled4 class matches 0 run scoreboard players operation #max mem > $4 statClassSelectCycle
execute if score #enabled5 class matches 0 run scoreboard players operation #max mem > $5 statClassSelectCycle
# 选择新增的职业（未被选择轮数最多的未启用职业）
execute if score #enabled1 class matches 0 if score #max mem = $1 statClassSelectCycle run scoreboard players set $enter class 1
execute if score #enabled2 class matches 0 if score #max mem = $2 statClassSelectCycle run scoreboard players set $enter class 2
execute if score #enabled3 class matches 0 if score #max mem = $3 statClassSelectCycle run scoreboard players set $enter class 3
execute if score #enabled4 class matches 0 if score #max mem = $4 statClassSelectCycle run scoreboard players set $enter class 4
execute if score #enabled5 class matches 0 if score #max mem = $5 statClassSelectCycle run scoreboard players set $enter class 5
# 让未被选中的职业的未被选择轮数 +1
execute if score #enabled1 class matches 0 unless score #max mem = $1 statClassSelectCycle run scoreboard players add $1 statClassSelectCycle 1
execute if score #enabled2 class matches 0 unless score #max mem = $2 statClassSelectCycle run scoreboard players add $2 statClassSelectCycle 1
execute if score #enabled3 class matches 0 unless score #max mem = $3 statClassSelectCycle run scoreboard players add $3 statClassSelectCycle 1
execute if score #enabled4 class matches 0 unless score #max mem = $4 statClassSelectCycle run scoreboard players add $4 statClassSelectCycle 1
execute if score #enabled5 class matches 0 unless score #max mem = $5 statClassSelectCycle run scoreboard players add $5 statClassSelectCycle 1

# 获取已启用职业中，最多的被选择次数
scoreboard players set #max mem 0
execute if score #enabled1 class matches 1 run scoreboard players operation #max mem > $1 statClassSelectCycle
execute if score #enabled2 class matches 1 run scoreboard players operation #max mem > $2 statClassSelectCycle
execute if score #enabled3 class matches 1 run scoreboard players operation #max mem > $3 statClassSelectCycle
execute if score #enabled4 class matches 1 run scoreboard players operation #max mem > $4 statClassSelectCycle
execute if score #enabled5 class matches 1 run scoreboard players operation #max mem > $5 statClassSelectCycle
# 选择移除的职业（被选择次数最多的已启用职业）
execute if score #enabled1 class matches 1 if score #max mem = $1 statClassSelectCycle run scoreboard players set $leave class 1
execute if score #enabled2 class matches 1 if score #max mem = $2 statClassSelectCycle run scoreboard players set $leave class 2
execute if score #enabled3 class matches 1 if score #max mem = $3 statClassSelectCycle run scoreboard players set $leave class 3
execute if score #enabled4 class matches 1 if score #max mem = $4 statClassSelectCycle run scoreboard players set $leave class 4
execute if score #enabled5 class matches 1 if score #max mem = $5 statClassSelectCycle run scoreboard players set $leave class 5

# 清空禁用职业的计数
execute if score $leave class matches 1 run scoreboard players set $1 statClassSelectCycle 0
execute if score $leave class matches 2 run scoreboard players set $2 statClassSelectCycle 0
execute if score $leave class matches 3 run scoreboard players set $3 statClassSelectCycle 0
execute if score $leave class matches 4 run scoreboard players set $4 statClassSelectCycle 0
execute if score $leave class matches 5 run scoreboard players set $5 statClassSelectCycle 0

# 替换职业
execute if score $1 class = $leave class run scoreboard players operation $1 class = $enter class
execute if score $2 class = $leave class run scoreboard players operation $2 class = $enter class
execute if score $3 class = $leave class run scoreboard players operation $3 class = $enter class
execute if score $4 class = $leave class run scoreboard players operation $4 class = $enter class
execute if score $5 class = $leave class run scoreboard players operation $5 class = $enter class
function pvp:class/refresh_storage

# 准备信息
execute if score $leave class matches 1 run summon marker ~ ~ ~ {CustomName:'"游侠"',Tags:["leave_info"]}
execute if score $leave class matches 2 run summon marker ~ ~ ~ {CustomName:'"暗影"',Tags:["leave_info"]}
execute if score $leave class matches 3 run summon marker ~ ~ ~ {CustomName:'"突袭者"',Tags:["leave_info"]}
execute if score $leave class matches 4 run summon marker ~ ~ ~ {CustomName:'"海嗣"',Tags:["leave_info"]}
execute if score $leave class matches 5 run summon marker ~ ~ ~ {CustomName:'"耀骑士"',Tags:["leave_info"]}
execute if score $enter class matches 1 run summon marker ~ ~ ~ {CustomName:'"游侠"',Tags:["enter_info"]}
execute if score $enter class matches 2 run summon marker ~ ~ ~ {CustomName:'"暗影"',Tags:["enter_info"]}
execute if score $enter class matches 3 run summon marker ~ ~ ~ {CustomName:'"突袭者"',Tags:["enter_info"]}
execute if score $enter class matches 4 run summon marker ~ ~ ~ {CustomName:'"海嗣"',Tags:["enter_info"]}
execute if score $enter class matches 5 run summon marker ~ ~ ~ {CustomName:'"耀骑士"',Tags:["enter_info"]}
# 显示信息
title @a subtitle [{"selector":"@e[tag=leave_info]","color":"red"},{"text":" (禁用)","color":"red"},{"text":"  >>>  ","color":"white"},{"selector":"@e[tag=enter_info]","color":"green"},{"text":" (启用)","color":"green"}]
title @a times 10 280 10
title @a title {"text":"可选职业变更","color":"white"}
kill @e[tag=leave_info]
kill @e[tag=enter_info]

# 将已启用职业随机增加少许选择次数（以实现重复轮换时的随机化）
function pvp:class/refresh_enabled_scoreboard
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 5
function modules:random
execute if score #enabled1 class matches 1 if score #random mem matches 1 run scoreboard players add $1 statClassSelectCycle 5
execute if score #enabled2 class matches 1 if score #random mem matches 2 run scoreboard players add $2 statClassSelectCycle 5
execute if score #enabled3 class matches 1 if score #random mem matches 3 run scoreboard players add $3 statClassSelectCycle 5
execute if score #enabled4 class matches 1 if score #random mem matches 4 run scoreboard players add $4 statClassSelectCycle 5
execute if score #enabled5 class matches 1 if score #random mem matches 5 run scoreboard players add $5 statClassSelectCycle 5
