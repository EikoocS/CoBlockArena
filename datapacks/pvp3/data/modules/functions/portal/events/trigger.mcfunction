# 确认传送门编号
execute if entity @s[x=8,y=236,z=-4,distance=..10] run scoreboard players set #portal mem 1
execute if entity @s[x=8,y=236,z=21,distance=..10] run scoreboard players set #portal mem 2
execute if entity @s[x=1000,y=100,z=1000,distance=..500] run scoreboard players set #portal mem 3

# 触发
execute if score #portal mem matches 1 run function pvp:state/lobby/in/enter_train
execute if score #portal mem matches 2 run function pvp:state/lobby/in/prepared
execute if score #portal mem matches 3 run function pvp:state/train/leave

# 特效
execute at @s run playsound minecraft:block.portal.travel block @s ~ ~ ~ 0.3
effect give @s blindness 1 0 true