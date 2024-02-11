function modules:stat/sub/balance_refresh
function pvp:class/refresh_enabled_scoreboard

# 记录职业选择信息
execute unless score $stat_condition debug matches 1 if score @s class matches 1 run scoreboard players add $1 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score @s class matches 2 run scoreboard players add $2 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score @s class matches 3 run scoreboard players add $3 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score @s class matches 4 run scoreboard players add $4 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score @s class matches 5 run scoreboard players add $5 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score @s class matches 6 run scoreboard players add $6 statClassSelectReal 1
execute unless score $stat_condition debug matches 1 if score #enabled1 class matches 1 run scoreboard players add $1 statClassSelectPossible 1
execute unless score $stat_condition debug matches 1 if score #enabled2 class matches 1 run scoreboard players add $2 statClassSelectPossible 1
execute unless score $stat_condition debug matches 1 if score #enabled3 class matches 1 run scoreboard players add $3 statClassSelectPossible 1
execute unless score $stat_condition debug matches 1 if score #enabled4 class matches 1 run scoreboard players add $4 statClassSelectPossible 1
execute unless score $stat_condition debug matches 1 if score #enabled5 class matches 1 run scoreboard players add $5 statClassSelectPossible 1
execute unless score $stat_condition debug matches 1 if score #enabled6 class matches 1 run scoreboard players add $6 statClassSelectPossible 1

# 记录轮换用信息
execute if score @s class matches 1 run scoreboard players add $1 statClassSelectCycle 1
execute if score @s class matches 2 run scoreboard players add $2 statClassSelectCycle 1
execute if score @s class matches 3 run scoreboard players add $3 statClassSelectCycle 1
execute if score @s class matches 4 run scoreboard players add $4 statClassSelectCycle 1
execute if score @s class matches 5 run scoreboard players add $5 statClassSelectCycle 1
execute if score @s class matches 6 run scoreboard players add $6 statClassSelectCycle 1
