# 1：村庄地图
execute if score $map mem matches 1 run tag @e[tag=map_marker,x=-1950,y=115,z=-1950,distance=..300] add select_point
# 2：冰树地图
execute if score $map mem matches 2 run tag @e[tag=map_marker,x=6050,y=115,z=6050,distance=..300] add select_point
# 3：古堡地图
execute if score $map mem matches 3 run tag @e[tag=map_marker,x=-2050,y=115,z=2050,distance=..300] add select_point

# 选择 7 格范围
execute if entity @s[team=red] as @e[tag=select_point] at @s if entity @a[team=!red,scores={state=2},distance=..7] unless entity @e[team=!red,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute if entity @s[team=blue] as @e[tag=select_point] at @s if entity @a[team=!blue,scores={state=2},distance=..7] unless entity @e[team=!blue,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute if entity @s[team=green] as @e[tag=select_point] at @s if entity @a[team=!green,scores={state=2},distance=..7] unless entity @e[team=!green,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute if entity @s[team=yellow] as @e[tag=select_point] at @s if entity @a[team=!yellow,scores={state=2},distance=..7] unless entity @e[team=!yellow,distance=..6,type=#modules:living,type=!player] run tag @s add random_point

# 若失败则选择 15 格范围
execute unless entity @e[tag=random_point] if entity @s[team=red] as @e[tag=select_point] at @s unless entity @a[team=!red,scores={state=2},distance=..15] unless entity @e[team=!red,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=blue] as @e[tag=select_point] at @s unless entity @a[team=!red,scores={state=2},distance=..15] unless entity @e[team=!blue,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=green] as @e[tag=select_point] at @s unless entity @a[team=!red,scores={state=2},distance=..15] unless entity @e[team=!green,distance=..6,type=#modules:living,type=!player] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=yellow] as @e[tag=select_point] at @s unless entity @a[team=!red,scores={state=2},distance=..15] unless entity @e[team=!yellow,distance=..6,type=#modules:living,type=!player] run tag @s add random_point

# 若失败则全选
execute unless entity @e[tag=random_point] run tag @e[tag=select_point] add random_point

# 传送
tp @s @e[limit=1,sort=random,tag=random_point]
execute unless entity @s[type=ravager] run function modules:anti_stuck/sub/player
execute if entity @s[type=ravager] run function modules:anti_stuck/sub/ravager

# 清理 Tag
tag @e[tag=map_marker] remove select_point
tag @e[tag=map_marker] remove random_point