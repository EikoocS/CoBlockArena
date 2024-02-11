
# 起点特效
particle minecraft:bubble_pop ~5 ~0.8 ~ 0.2 0.6 0.2 0.1 50 normal @a
playsound minecraft:entity.player.splash.high_speed player @a[distance=0.01..]

# 传送
effect give @s absorption 1000000 1 true
effect give @s blindness 1 0 true
function modules:map/sub/enter_near_enemy
function modules:anti_stuck/sub/reset_fall

# 终点特效
execute at @s run playsound minecraft:block.conduit.activate player @a
execute at @s run playsound minecraft:block.conduit.activate player @s 0 1000000 0 1000000
execute at @s run particle minecraft:dolphin ~ ~0.8 ~ 0.2 0.6 0.2 0 500 normal @a