scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 5
function modules:random

# 在白天不选择暗影
execute if score $is_day mem matches 1 if score #random mem matches 2 run scoreboard players operation #random mem = @s class
# 在晚上不选择耀骑士
execute if score $is_day mem matches 0 if score #random mem matches 5 run scoreboard players operation #random mem = @s class

# 不选择未启用的职业
execute if score #enabled1 class matches 0 if score #random mem matches 1 run scoreboard players operation #random mem = @s class
execute if score #enabled2 class matches 0 if score #random mem matches 2 run scoreboard players operation #random mem = @s class
execute if score #enabled3 class matches 0 if score #random mem matches 3 run scoreboard players operation #random mem = @s class
execute if score #enabled4 class matches 0 if score #random mem matches 4 run scoreboard players operation #random mem = @s class
execute if score #enabled5 class matches 0 if score #random mem matches 5 run scoreboard players operation #random mem = @s class

execute if score #random mem = @s class run function modules:mutation/special/2_random_loop