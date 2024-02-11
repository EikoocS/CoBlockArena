# 更新启用情况
scoreboard players set #enabled1 class 1
scoreboard players set #enabled2 class 1
scoreboard players set #enabled3 class 1
scoreboard players set #enabled4 class 1
scoreboard players set #enabled5 class 1
execute unless score $1 class matches 1 unless score $2 class matches 1 unless score $3 class matches 1 unless score $4 class matches 1 run scoreboard players set #enabled1 class 0
execute unless score $1 class matches 2 unless score $2 class matches 2 unless score $3 class matches 2 unless score $4 class matches 2 run scoreboard players set #enabled2 class 0
execute unless score $1 class matches 3 unless score $2 class matches 3 unless score $3 class matches 3 unless score $4 class matches 3 run scoreboard players set #enabled3 class 0
execute unless score $1 class matches 4 unless score $2 class matches 4 unless score $3 class matches 4 unless score $4 class matches 4 run scoreboard players set #enabled4 class 0
execute unless score $1 class matches 5 unless score $2 class matches 5 unless score $3 class matches 5 unless score $4 class matches 5 run scoreboard players set #enabled5 class 0