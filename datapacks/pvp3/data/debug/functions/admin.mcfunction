tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n ❇  方块竞技场控制面板\n","color":"aqua"},{"text":"     妈耶，难不成这就是传说中神的力量？\n","color":"gray"}]

# 系统
summon marker ~ ~ ~ {CustomName:'{"text":"[重置游戏]","color":"white"}',Tags:["display1"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[轮换职业]","color":"white"}',Tags:["display2"]}
execute if score $system_f3 debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3 面板]","color":"gray"}',Tags:["display3"]}
execute if score $system_f3 debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3 面板]","color":"green"}',Tags:["display3"]}
tellraw @s ["     系统  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/system_init"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/system_cycle"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/system_f3"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]

# 突变
execute if score $mutation_count debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 自动]","color":"gray"}',Tags:["display1"]}
execute if score $mutation_count debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 2 次]","color":"green"}',Tags:["display1"]}
execute if score $mutation_count debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 1 次]","color":"green"}',Tags:["display1"]}
execute if score $mutation_count debug matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[突变次数 0 次]","color":"green"}',Tags:["display1"]}
execute if score $mutation_speed debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 1x]","color":"gray"}',Tags:["display2"]}
execute if score $mutation_speed debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 2x]","color":"green"}',Tags:["display2"]}
execute if score $mutation_speed debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[触发条速度 5x]","color":"green"}',Tags:["display2"]}
tellraw @s ["     突变  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_count"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_speed"}}]
kill @e[tag=display1]
kill @e[tag=display2]

# 平衡
execute if score $balance_team debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[不检查队伍人数]","color":"gray"}',Tags:["display1"]}
execute if score $balance_team debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[不检查队伍人数]","color":"green"}',Tags:["display1"]}
tellraw @s ["     平衡  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/balance_team"}}]
kill @e[tag=display1]

# 追踪
execute if score $track_damage debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[伤害追踪]","color":"gray"}',Tags:["display1"]}
execute if score $track_damage debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[伤害追踪]","color":"green"}',Tags:["display1"]}
execute if score $track_death_info debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 默认]","color":"gray"}',Tags:["display2"]}
execute if score $track_death_info debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 全部]","color":"green"}',Tags:["display2"]}
execute if score $track_death_info debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[死亡信息 关闭]","color":"green"}',Tags:["display2"]}
execute if score $track_ray_move debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[射线路径]","color":"gray"}',Tags:["display3"]}
execute if score $track_ray_move debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[射线路径]","color":"green"}',Tags:["display3"]}
execute if score $track_ray_tp debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃点标记]","color":"gray"}',Tags:["display4"]}
execute if score $track_ray_tp debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃点标记]","color":"green"}',Tags:["display4"]}
tellraw @s ["     追踪  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_damage"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_death_info"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_ray_move"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/track_ray_tp"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]

# 战斗
execute if score $skill_cd debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 1x]","color":"gray"}',Tags:["display1"]}
execute if score $skill_cd debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 2x]","color":"green"}',Tags:["display1"]}
execute if score $skill_cd debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 10x]","color":"green"}',Tags:["display1"]}
execute if score $skill_cd debug matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[冷却速度 立即]","color":"green"}',Tags:["display1"]}
execute if score $skill_heal debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬间治疗]","color":"gray"}',Tags:["display2"]}
execute if score $skill_heal debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬间治疗]","color":"green"}',Tags:["display2"]}
execute if score $skill_respawn debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度]","color":"gray"}',Tags:["display3"]}
execute if score $skill_respawn debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度 2x]","color":"green"}',Tags:["display3"]}
execute if score $skill_respawn debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活速度 立即]","color":"green"}',Tags:["display3"]}
execute if score $skill_friendly_fire debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[友军伤害]","color":"gray"}',Tags:["display4"]}
execute if score $skill_friendly_fire debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[友军伤害]","color":"green"}',Tags:["display4"]}
tellraw @s ["     战斗  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_cd"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_heal"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_respawn"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/skill_friendly_fire"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]

# 统计
summon marker ~ ~ ~ {CustomName:'{"text":"[显示]","color":"white"}',Tags:["display1"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[重置]","color":"white"}',Tags:["display2"]}
execute if score $stat_condition debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 默认]","color":"gray"}',Tags:["display3"]}
execute if score $stat_condition debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 关闭]","color":"green"}',Tags:["display3"]}
execute if score $stat_condition debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[数据收集 开启]","color":"green"}',Tags:["display3"]}
execute if score $stat_elo debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[段位分提示]","color":"gray"}',Tags:["display4"]}
execute if score $stat_elo debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[段位分提示]","color":"green"}',Tags:["display4"]}
tellraw @s ["     统计  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function modules:stat/sub/print"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function modules:stat/sub/reset"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/stat_condition"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/stat_elo"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]

# 信息
execute if score $info_tip_hide debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭小提示]","color":"gray"}',Tags:["display1"]}
execute if score $info_tip_hide debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭小提示]","color":"green"}',Tags:["display1"]}
execute if score $info_hud debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 全部显示]","color":"gray"}',Tags:["display2"]}
execute if score $info_hud debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 无侧边栏]","color":"green"}',Tags:["display2"]}
execute if score $info_hud debug matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[HUD 全部隐藏]","color":"green"}',Tags:["display2"]}
execute if score $info_ignore_afk debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[忽略挂机]","color":"gray"}',Tags:["display3"]}
execute if score $info_ignore_afk debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[忽略挂机]","color":"green"}',Tags:["display3"]}
execute if score $info_refresh_inv debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[物品刷新指示]","color":"gray"}',Tags:["display4"]}
execute if score $info_refresh_inv debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[物品刷新指示]","color":"green"}',Tags:["display4"]}
tellraw @s ["     信息  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_tip_hide"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_hud"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_ignore_afk"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/info_refresh_inv"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]

# 地图
summon marker ~ ~ ~ {CustomName:'{"text":"[正午]","color":"white"}',Tags:["display1"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[凌晨]","color":"white"}',Tags:["display2"]}
execute if score $map_time debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭昼夜交替]","color":"gray"}',Tags:["display3"]}
execute if score $map_time debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[关闭昼夜交替]","color":"green"}',Tags:["display3"]}
execute if score $map_marker debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[出生点标记]","color":"gray"}',Tags:["display4"]}
execute if score $map_marker debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[出生点标记]","color":"green"}',Tags:["display4"]}
tellraw @s ["     地图  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/time set noon"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/time set midnight"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_time"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_marker"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]

# 切换部分
tellraw @s ""

# 切换战场
execute if score $map mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[村庄]","color":"green"}',Tags:["display1"]}
execute unless score $map mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[村庄]","color":"gray"}',Tags:["display1"]}
execute if score $map mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冰树]","color":"green"}',Tags:["display2"]}
execute unless score $map mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[冰树]","color":"gray"}',Tags:["display2"]}
execute if score $map mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[古堡]","color":"green"}',Tags:["display3"]}
execute unless score $map mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[古堡]","color":"gray"}',Tags:["display3"]}
tellraw @s ["     切换战场  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_1"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_2"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/map_change_3"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]

# 切换突变
execute if score $mutation mem matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[无]","color":"green"}',Tags:["display1"]}
execute unless score $mutation mem matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[无]","color":"gray"}',Tags:["display1"]}
execute if score $mutation mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬息万变]","color":"green"}',Tags:["display2"]}
execute unless score $mutation mem matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[瞬息万变]","color":"gray"}',Tags:["display2"]}
execute if score $mutation mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[混沌灵魂]","color":"green"}',Tags:["display3"]}
execute unless score $mutation mem matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[混沌灵魂]","color":"gray"}',Tags:["display3"]}
execute if score $mutation mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[引力失衡]","color":"green"}',Tags:["display4"]}
execute unless score $mutation mem matches 3 run summon marker ~ ~ ~ {CustomName:'{"text":"[引力失衡]","color":"gray"}',Tags:["display4"]}
execute if score $mutation mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[厄难之血]","color":"green"}',Tags:["display5"]}
execute unless score $mutation mem matches 4 run summon marker ~ ~ ~ {CustomName:'{"text":"[厄难之血]","color":"gray"}',Tags:["display5"]}
tellraw @s ["     切换突变  >>   ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_0"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_1"},"hoverEvent":{"action":"show_text","contents":"生命上限降低，但静息治疗会瞬间恢复所有生命"}},"  ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_2"},"hoverEvent":{"action":"show_text","contents":"每隔一段时间，所有人的职业会随机改变"}},"  ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_3"},"hoverEvent":{"action":"show_text","contents":"大地的引力几乎消失了，一切都变得诡异而陌生"}},"  ",{"selector":"@e[tag=display5]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_4"},"hoverEvent":{"action":"show_text","contents":"能力冷却仅在攻击敌人或被攻击时才能恢复"}}]
kill @e[tag=display1]
kill @e[tag=display2]
kill @e[tag=display3]
kill @e[tag=display4]
kill @e[tag=display5]

execute if score $mutation mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃灵泉]","color":"green"}',Tags:["display1"]}
execute unless score $mutation mem matches 5 run summon marker ~ ~ ~ {CustomName:'{"text":"[折跃灵泉]","color":"gray"}',Tags:["display1"]}
execute if score $mutation mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[连锁换位]","color":"green"}',Tags:["display2"]}
execute unless score $mutation mem matches 6 run summon marker ~ ~ ~ {CustomName:'{"text":"[连锁换位]","color":"gray"}',Tags:["display2"]}
tellraw @s ["                          ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_5"},"hoverEvent":{"action":"show_text","contents":"接触水的生物会获得少量护盾，并传送到敌方附近"}},"  ",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/function debug:trigger/mutation_6"},"hoverEvent":{"action":"show_text","contents":"每隔一段时间，所有人就会随机交换位置"}}]
kill @e[tag=display1]
kill @e[tag=display2]

tellraw @s "\n"
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.15 1