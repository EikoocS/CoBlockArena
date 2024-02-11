# 玩家状态 0：大厅中
scoreboard players set @s state 0

# 重置位置与状态
tp @s[scores={tip_0_tutorial=7..},x=0,y=237,z=0,distance=200..] -0.5 235.0 8.5 -90 2
attribute @s minecraft:generic.max_health base set 20
effect clear @s
title @s clear
gamemode adventure
xp set @s 0 points
xp set @s 0 levels
function modules:anti_stuck/sub/reset_fall
function class:modules/reset_modifiers

# 重置伤害信息
scoreboard players set @s killCombo 0
function modules:mino2/sub/forgive

# 确认当前职业是否可用
execute if score @s class matches 1.. unless score @s class = $1 class unless score @s class = $2 class unless score @s class = $3 class unless score @s class = $4 class run scoreboard players operation @s class = $1 class

# 重置物品栏与队伍
team join lobby @s
scoreboard players set @s team_prefer 0
function modules:update_bossbar
clear @s
function pvp:state/lobby/refresh_inventory
