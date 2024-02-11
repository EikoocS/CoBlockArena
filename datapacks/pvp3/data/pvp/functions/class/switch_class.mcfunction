# 选职业
scoreboard players operation @s[nbt=!{Inventory:[{Slot:1b}]}] class = $1 class
scoreboard players operation @s[nbt=!{Inventory:[{Slot:2b}]}] class = $2 class
scoreboard players operation @s[nbt=!{Inventory:[{Slot:3b}]}] class = $3 class
scoreboard players operation @s[nbt=!{Inventory:[{Slot:4b}]}] class = $4 class
# 播放音效
playsound minecraft:block.stone_button.click_on player @s 0 1000000 0 1000000
# 刷新物品
execute if entity @s[scores={state=0}] run function pvp:state/lobby/refresh_inventory
execute if entity @s[scores={state=1}] run function pvp:state/respawn/refresh_inventory
# 消除死亡选择职业提示
scoreboard players add @s[scores={state=1}] tip_1_respawn_class 1