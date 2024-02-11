# 执行者为受伤的玩家，攻击者有标签 mino_murder，通过 mino_type_now 获取伤害种类

execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team run scoreboard players add @s cd_speed 10000
execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team run playsound block.beacon.power_select player @s 0 100000 0 1 2 0.8
execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team at @s anchored eyes run particle minecraft:dust 10 0 0 1.2 ^ ^ ^0.2 0.35 0.35 0.35 0 20 normal @s

execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team run scoreboard players add @p[tag=mino_murder] cd_speed 10000
execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team run playsound block.beacon.power_select player @p[tag=mino_murder] 0 100000 0 1 2 0.8
execute if score $mutation mem matches 4 unless score @p[tag=mino_murder] team = @s team as @p[tag=mino_murder] at @s anchored eyes run particle minecraft:dust 10 0 0 1.2 ^ ^ ^0.2 0.35 0.35 0.35 0 20 normal @s
