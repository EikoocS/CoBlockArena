
# 连杀数

execute if score #death_type mem matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"自杀 ✒  ","color":"gray"}',Tags:["death_info"]}
execute if score #death_type mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"误杀 ✒  ","color":"gray"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches ..1 if score @s killCombo matches ..2 run summon marker ~ ~ ~ {CustomName:'{"text":"击杀 ✒  ","color":"#E6ED67"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches ..1 if score @s killCombo matches 3.. run summon marker ~ ~ ~ {CustomName:'{"text":"终结 ✒  ","color":"#E6ED67"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 2 run summon marker ~ ~ ~ {CustomName:'{  "text":"双杀 ✒  ","color":"#FDA61D"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"三连杀 ✒  ","color":"#FDA61D"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"四连杀 ✒  ","color":"red"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"五连杀 ✒  ","color":"red"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"六连杀 ✒  ","color":"#FF41E7"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 7 run summon marker ~ ~ ~ {CustomName:'{"text":"七连杀 ✒  ","color":"#FF41E7"}',Tags:["death_info"]}
execute if score #death_type mem matches 2 if score @p[tag=murder] killCombo matches 8.. run summon marker ~ ~ ~ {CustomName:'{"text":"传奇连杀 ✒  ","color":"#FF41E7"}',Tags:["death_info"]}

# 摔落

execute if score @s mino_type_last matches 00000 if score #death_type mem matches 0 if entity @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 从高处坠下，粉身碎骨"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 0 if entity @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. if entity @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时从高处坠下，粉身碎骨"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. if entity @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时不幸摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches ..-1 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在逃离 ",{"selector":"@p[tag=murder]"}," 后不慎摔死了"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 if entity @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被摔成了肉饼"]
execute if score @s mino_type_last matches 00000 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 if entity @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后被摔死了"]

# 其他通用

execute if score @s mino_type_last matches 00010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在火焰中看到了希望"]
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 0 run advancement grant @s only pvp:hidden/campfire
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被烧成了焦炭"]
execute if score @s mino_type_last matches 00010 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被烧成了焦炭"]

execute if score @s mino_type_last matches 00020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 太弱小了，以至于被 ",{"selector":"@p[tag=murder]"}," 一巴掌揍死了"]

execute if score @s mino_type_last matches 00030 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 凋零了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_type_real matches 01020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的凋亡箭命中，最终凋谢了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 unless score @s mino_type_real matches 01020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时凋零了"]
execute if score @s mino_type_last matches 00030 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后凋零了"]

execute if score @s mino_type_last matches 00050 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在水中溶解了"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches 0.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时落入水中，溶解殆尽"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 if score @s mino_forgive_timer matches ..-1 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在逃离 ",{"selector":"@p[tag=murder]"}," 后不慎落入水中，溶解殆尽"]
execute if score @s mino_type_last matches 00050 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，落入水中溶解殆尽"]

execute if score @s mino_type_last matches 00060 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 把自己塞进了方块里"]
execute if score @s mino_type_last matches 00060 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 为了躲开 ",{"selector":"@p[tag=murder]"},"，不惜将自己塞入方块里"]
execute if score @s mino_type_last matches 00060 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后，被塞进了方块里"]

# 游侠

execute if score @s mino_type_last matches 01011 if entity @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭击下了悬崖，粉身碎骨"]
execute if score @s mino_type_last matches 01011 if entity @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭击飞后摔死了"]

execute if score @s mino_type_last matches 01010 if entity @s[tag=mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭射穿了心脏"]
execute if score @s mino_type_last matches 01010 if entity @s[tag=!mino_story_large] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的强击箭射杀了"]
execute if score @s mino_type_last matches 01020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的凋亡箭射杀了"]
execute if score @s mino_type_last matches 01030 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的光焰箭射杀了"]
execute if score @s mino_type_last matches 01040 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的巫毒箭射杀了"]
execute if score @s mino_type_last matches 01050 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的折跃箭不幸射杀了"]

# 暗影

execute if score @s mino_type_last matches 02010 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用死神之镰杀死了"]
execute if score @s mino_type_last matches 02011 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 的灵魂被 ",{"selector":"@p[tag=murder]"}," 的死神之镰收割了"]

# 突袭者

execute if score @s mino_type_last matches 03010 if entity @s[tag=mino_story_large] if entity @a[tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的战斧劈成了两半"]
execute if score @s mino_type_last matches 03010 if entity @s[tag=!mino_story_large] if entity @a[tag=murder] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用战斧杀死了"]

execute if score @s mino_type_last matches 03020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的劫掠兽创死了"]

# 海嗣

execute if score @s mino_type_last matches 04010 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被自己引来的天雷劈死了"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时，引来的闪电不幸劈中了自己"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. if score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 引来的闪电劈死了"]
execute if score @s mino_type_last matches 04010 if score #death_type mem matches 1.. if score @s mino_source_last matches 1.. unless score @s mino_source_real = @s mino_source_last run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被闪电劈死了"]

execute if score @s mino_type_last matches 04011 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的辉煌裂片劈成了焦炭"]
execute if score @s mino_type_last matches 04012 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 所激活的辉煌裂片劈成了焦炭"]

execute if score @s mino_type_last matches 04020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用海神戟刺杀了"]
execute if score @s mino_type_last matches 04030 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 投掷的海神戟贯穿了"]

execute if score @s mino_type_last matches 04040 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 拥抱了辉煌裂片上的尖刺"]
execute if score @s mino_type_last matches 04040 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 战斗时被辉煌裂片上的尖刺戳死了"]
execute if score @s mino_type_last matches 04040 run advancement grant @s only pvp:hidden/spike

execute if score @s mino_type_last matches 04050 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 借助激流飞上高空，但没能安全降落"]
execute if score @s mino_type_last matches 04050 if score #death_type mem matches 1.. run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 借助激流与 ",{"selector":"@p[tag=murder]"}," 拉开距离，但没能安全降落"]

execute if score @s mino_type_last matches 04060 if score #death_type mem matches 0 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在水中浸泡了太久，最终溶解了"]
execute if score @s mino_type_last matches 04060 if score #death_type mem matches 1.. unless score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 与 ",{"selector":"@p[tag=murder]"}," 战斗时在水中浸泡了太久"]
execute if score @s mino_type_last matches 04060 if score #death_type mem matches 1.. if score @s mino_type_real matches 00080 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 在与 ",{"selector":"@p[tag=murder]"}," 换位后落入水中，再也没能上岸"]

# 耀骑士

execute if score @s mino_type_last matches 05010 if entity @s[tag=mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 的灿焰长剑杀死了"]
execute if score @s mino_type_last matches 05010 if entity @s[tag=!mino_story_small] run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 被 ",{"selector":"@p[tag=murder]"}," 用灿焰长剑斩杀了"]

execute if score @s mino_type_last matches 05020 run tellraw @a[tag=pass] ["",{"selector":"@e[tag=death_info]"},{"selector":"@s"}," 与 ",{"selector":"@p[tag=murder]"}," 的烁光新星一起化为了星光"]

# 清理
kill @e[tag=death_info]