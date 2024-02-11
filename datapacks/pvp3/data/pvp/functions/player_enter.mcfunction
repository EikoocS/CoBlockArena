# 检查主游戏更新
execute unless score $version mem matches 1 run function debug:init

# 设置玩家 ID
execute unless score @s player_id matches 1.. run scoreboard players add #player_id_max mem 1
execute unless score @s player_id matches 1.. run scoreboard players operation @s player_id = #player_id_max mem
execute store result score @s player_uuid run data get entity @s UUID[0]

# 激活各个 State 的进入事件
execute if entity @s[scores={tip_0_tutorial=..2}] run function pvp:state/train/enter
execute if entity @s[scores={tip_0_tutorial=3}] run function pvp:state/lobby/enter
execute if entity @s[scores={tip_0_tutorial=4..6}] run function pvp:state/train/enter
execute if entity @s[scores={tip_0_tutorial=7..}] run function pvp:state/lobby/enter

# 初始化出生点
function modules:map/sub/spawn_point
