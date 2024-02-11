# 随机更换职业
function pvp:class/refresh_enabled_scoreboard
function modules:mutation/special/2_random_loop
scoreboard players operation @s class = #random mem

# 额外处理
effect clear @s water_breathing
effect clear @s night_vision
effect clear @s slow_falling
effect clear @s speed
effect clear @s resistance
effect clear @s invisibility
scoreboard players set #xp mem 0
scoreboard players set #level mem 0
function class:modules/reset_modifiers
attribute @s minecraft:generic.attack_damage base set 1
function modules:set_xp
function class:events/player_spawn
function class:modules/inventory/run
function class:4_oceancat/trident/clear

# 特效
playsound minecraft:block.beacon.power_select player @s 0 1000000 0 1000000 2
particle witch ~ ~1.3 ~ 0.4 0.4 0.4 0 100
tellraw @s ["",{"text":" ⚕ 突变效果触发 ⚕ ","color":"light_purple"}," 你的职业已改变！"]

# 刷新多余血量
execute unless score @s class matches 3 run effect give @s[scores={state=2..,hp=21..}] minecraft:instant_health 2 0 true