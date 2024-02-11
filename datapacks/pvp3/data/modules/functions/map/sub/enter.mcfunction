# 1：村庄地图
execute if score $map mem matches 1 run tag @e[tag=map_marker,x=-1950,y=115,z=-1950,distance=..300] add select_point
# 2：冰树地图
execute if score $map mem matches 2 run tag @e[tag=map_marker,x=6050,y=115,z=6050,distance=..300] add select_point
# 3：古堡地图
execute if score $map mem matches 3 run tag @e[tag=map_marker,x=-2050,y=115,z=2050,distance=..300] add select_point
# 其他未使用的地图：
#  海岛 2010.5 36.2 2017.5
#  玄素 3040.7 41.2 3053.5
#  球场 -2935.5 35.2 -2925.5

# 选择 40 格范围
execute if entity @s[team=red] as @e[tag=select_point] at @s unless entity @e[team=!red,distance=..40,type=#modules:living] run tag @s add random_point
execute if entity @s[team=blue] as @e[tag=select_point] at @s unless entity @e[team=!blue,distance=..40,type=#modules:living] run tag @s add random_point
execute if entity @s[team=yellow] as @e[tag=select_point] at @s unless entity @e[team=!yellow,distance=..40,type=#modules:living] run tag @s add random_point
execute if entity @s[team=green] as @e[tag=select_point] at @s unless entity @e[team=!green,distance=..40,type=#modules:living] run tag @s add random_point

# 若失败则选择 20 格范围
execute unless entity @e[tag=random_point] if entity @s[team=red] as @e[tag=select_point] at @s unless entity @e[team=!red,distance=..20,type=#modules:living] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=blue] as @e[tag=select_point] at @s unless entity @e[team=!blue,distance=..20,type=#modules:living] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=yellow] as @e[tag=select_point] at @s unless entity @e[team=!yellow,distance=..20,type=#modules:living] run tag @s add random_point
execute unless entity @e[tag=random_point] if entity @s[team=green] as @e[tag=select_point] at @s unless entity @e[team=!green,distance=..20,type=#modules:living] run tag @s add random_point

# 若失败则全选
execute unless entity @e[tag=random_point] run tag @e[tag=select_point] add random_point

# 传送
tp @s @e[limit=1,sort=random,tag=random_point]
execute unless entity @s[type=ravager] run function modules:anti_stuck/sub/player
execute if entity @s[type=ravager] run function modules:anti_stuck/sub/ravager

# 清理 Tag
tag @e[tag=map_marker] remove select_point
tag @e[tag=map_marker] remove random_point