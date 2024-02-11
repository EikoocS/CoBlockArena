
# 重置 bossbar
scoreboard players set $mutation_tip mem 0
scoreboard players set $mutation_bossbar mem 0
bossbar set bossbar:white name ""
bossbar set bossbar:red name ""
bossbar set bossbar:blue name ""
bossbar set bossbar:green name ""
bossbar set bossbar:yellow name ""
function modules:update_bossbar

# 恢复
execute as @e[type=#modules:projectile/check,tag=!projectile_land] at @s run data modify entity @s NoGravity set value false
execute as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 20
scoreboard players set @a mino_time_00080 0
effect clear @a absorption

# 更新描述
kill @e[tag=mutation_name]
kill @e[tag=mutation_desc]
execute if score $mutation_new mem matches 1 run summon marker 0 0 0 {CustomName:'"瞬息万变"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 2 run summon marker 0 0 0 {CustomName:'"混沌灵魂"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 3 run summon marker 0 0 0 {CustomName:'"引力失衡"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 4 run summon marker 0 0 0 {CustomName:'"厄难之血"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 5 run summon marker 0 0 0 {CustomName:'"折跃灵泉"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 6 run summon marker 0 0 0 {CustomName:'"连锁换位"',Tags:["mutation_name"]}
execute if score $mutation_new mem matches 1 run summon marker 0 0 0 {CustomName:'"生命上限降低，但静息治疗会瞬间恢复所有生命"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 2 run summon marker 0 0 0 {CustomName:'"每隔一段时间，所有人的职业会随机改变"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 3 run summon marker 0 0 0 {CustomName:'"大地的引力几乎消失了，一切都变得诡异而陌生"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 4 run summon marker 0 0 0 {CustomName:'"能力冷却仅在攻击敌人或被攻击时才能恢复"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 5 run summon marker 0 0 0 {CustomName:'"接触水的生物会获得少量护盾，并传送到敌方附近"',Tags:["mutation_desc"]}
execute if score $mutation_new mem matches 6 run summon marker 0 0 0 {CustomName:'"每隔一段时间，所有人就会随机交换位置"',Tags:["mutation_desc"]}
