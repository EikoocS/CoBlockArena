
# 状态效果
execute if entity @s[scores={hp=..19,tip_0_tutorial=5..}] run effect give @s instant_health 2 2 true
execute if entity @s[scores={hp=..19,tip_0_tutorial=5..}] run effect give @s resistance 1 5 true

# 检查、刷新物品栏
execute if entity @s[scores={state=0}] run function pvp:state/lobby/tick1
execute if entity @s[scores={state=0}] run function pvp:state/lobby/refresh_inventory
