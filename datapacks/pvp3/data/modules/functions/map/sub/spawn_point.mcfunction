# 1：村庄地图
execute if score $map mem matches 1 run spawnpoint @a -1950 150000 -1950
execute if score $map mem matches 1 run forceload add -2000 -2000 -1900 -1900
execute if score $map mem matches 1 run forceload remove 6000 6000 6100 6100

# 2：冰树地图
execute if score $map mem matches 2 run spawnpoint @a 6050 150000 6050
execute if score $map mem matches 2 run forceload remove -2000 -2000 -1900 -1900
execute if score $map mem matches 2 run forceload add 6000 6000 6100 6100

# 3：古堡地图
execute if score $map mem matches 3 run spawnpoint @a -2050 150000 2050
execute if score $map mem matches 3 run forceload remove -2000 2000 -2100 2100
execute if score $map mem matches 3 run forceload add -2000 2000 -2100 2100

# 训练场
forceload add 1000 1000 1100 1100