# 触发重置
tellraw @a[scores={state=..2,tip_0_tutorial=7..}] ["",{"text":"\n ❇  本轮循环重置，战场已经改变，突变已经结束！","color":"aqua"},"\n     红队击杀：",{"score":{"name":"§c红队§r","objective":"teamKill"}},"     蓝队击杀：",{"score":{"name":"§9蓝队§r","objective":"teamKill"}},"     绿队击杀：",{"score":{"name":"§a绿队§r","objective":"teamKill"}},"     黄队击杀：",{"score":{"name":"§e黄队§r","objective":"teamKill"}},"\n"]
execute as @a[scores={state=..2,tip_0_tutorial=7..}] at @s run playsound minecraft:entity.ender_dragon.growl player @s 0 1000000 0 1000000
scoreboard players add @a[scores={state=1..2,tip_0_tutorial=7..}] statPlayerRound 1
execute as @a[scores={state=..2,tip_0_tutorial=7..}] at @s run function pvp:state/lobby/enter
function modules:kill_count/init
function modules:mutation/sub/off
function pvp:class/cycle

# 轮换地图
scoreboard players add $map mem 1
execute unless score $map mem matches 1..3 run scoreboard players set $map mem 1
function modules:map/sub/spawn_point
# 清理实体
kill @e[type=#modules:clean]
