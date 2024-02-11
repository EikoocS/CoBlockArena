tag @a[scores={state=2}] add 6_player

# 为每个人召唤一个对应的 Marker
execute as @a[tag=6_player] at @s run summon minecraft:marker ~ ~ ~ {Tags:["6_marker"]}
execute as @e[tag=6_marker] at @s run tp @s @p[tag=6_player]
execute as @e[tag=6_marker] at @s run scoreboard players operation @s player_id = @p[tag=6_player] player_id
execute as @e[tag=6_marker] at @s run scoreboard players operation @s team = @p[tag=6_player] team

# 传送并清除对应的 Marker
execute as @a[tag=6_player] at @s run function modules:mutation/special/6_player

# 特效
playsound minecraft:block.beacon.power_select player @a[scores={state=2}] 0 1000000 0 1000000 1.5
playsound minecraft:entity.enderman.teleport player @a[scores={state=2}] 0 1000000 0 1000000 0.9
execute as @a[scores={state=2}] at @s run particle minecraft:reverse_portal ~ ~1.3 ~ 0.4 0.4 0.4 0.15 100
