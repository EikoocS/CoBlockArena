
# 确认队伍
team join lobby @s[scores={team_prefer=0}]
team join red @s[scores={team_prefer=1}]
team join blue @s[scores={team_prefer=2}]
team join green @s[scores={team_prefer=3}]
team join yellow @s[scores={team_prefer=4}]
execute if entity @s[team=lobby] run function modules:team/sub/auto_join
execute if entity @s[team=!lobby] if score $balance_team debug matches 0 run function modules:team/sub/auto_join_with_prefer

# 显示提示
tellraw @s[team=red] [{"text":" ✳ ","color":"red"}," 你已加入红队！"]
tellraw @s[team=blue] [{"text":" ✳ ","color":"aqua"}," 你已加入蓝队！"]
tellraw @s[team=green] [{"text":" ✳ ","color":"green"}," 你已加入绿队！"]
tellraw @s[team=yellow] [{"text":" ✳ ","color":"yellow"}," 你已加入黄队！"]
tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 加入了战场"]

# 开始游戏
function modules:regen/sub/reset_afk
function pvp:state/battle/enter
