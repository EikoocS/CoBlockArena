# 进入战场的玩家执行
function class:modules/sneak/player_spawn
execute if score @s class matches 1 run function class:1_ranger/player_spawn
execute if score @s class matches 2 run function class:2_shadow/player_spawn
execute if score @s class matches 3 run function class:3_illager/player_spawn
execute if score @s class matches 4 run function class:4_oceancat/player_spawn
execute if score @s class matches 5 run function class:5_knight/player_spawn
tag @s remove 4_fly