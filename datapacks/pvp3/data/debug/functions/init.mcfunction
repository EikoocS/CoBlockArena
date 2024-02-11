# 全局初始化

datapack disable "vanilla"
tellraw @a[tag=pass] [{"text":" ❇ ","color":"aqua"}," 管理员已手动重置游戏！"]

# ---------------------------------------------
#  队伍
# ---------------------------------------------

team remove red
team add red {"text":"红队","color":"red"}
team modify red collisionRule always
team modify red color red
team modify red friendlyFire false
team modify red seeFriendlyInvisibles true

team remove blue
team add blue {"text":"蓝队","color":"blue"}
team modify blue collisionRule always
team modify blue color blue
team modify blue friendlyFire false
team modify blue seeFriendlyInvisibles true

team remove green
team add green {"text":"绿队","color":"green"}
team modify green collisionRule always
team modify green color green
team modify green friendlyFire false
team modify green seeFriendlyInvisibles true

team remove yellow
team add yellow {"text":"黄队","color":"yellow"}
team modify yellow collisionRule always
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow seeFriendlyInvisibles true

team remove lobby
team add lobby
team modify lobby collisionRule never
team modify lobby color white
team modify lobby friendlyFire false
team modify lobby seeFriendlyInvisibles true

# ---------------------------------------------
#  时钟（略微修改了初相，让它们间隔执行）
# ---------------------------------------------

schedule function modules:basic/events/tick1 1t replace
schedule function modules:basic/events/tick2 1t replace
schedule function modules:basic/events/tick4 2t replace
schedule function modules:basic/events/tick8 4t replace
schedule function modules:basic/events/tick16 8t replace
schedule function modules:basic/events/tick20 2t replace

# ---------------------------------------------
#  Game Rule
# ---------------------------------------------

difficulty hard
weather clear
function debug:reset_gamerule
forceload remove all
forceload add -16 -16 16 16

# ---------------------------------------------
#  记分板
# ---------------------------------------------

scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard players set $version mem 1
scoreboard players set #-1 mem -1
scoreboard players set #2 mem 2
scoreboard players set #3 mem 3
scoreboard players set #4 mem 4
scoreboard players set #5 mem 5
scoreboard players set #6 mem 6
scoreboard players set #7 mem 7
scoreboard players set #8 mem 8
scoreboard players set #9 mem 9
scoreboard players set #10 mem 10
scoreboard players set #12 mem 12
scoreboard players set #15 mem 15
scoreboard players set #16 mem 16
scoreboard players set #20 mem 20
scoreboard players set #25 mem 25
scoreboard players set #30 mem 30
scoreboard players set #35 mem 35
scoreboard players set #40 mem 40
scoreboard players set #45 mem 45
scoreboard players set #50 mem 50
scoreboard players set #55 mem 55
scoreboard players set #60 mem 60
scoreboard players set #61 mem 61
scoreboard players set #65 mem 65
scoreboard players set #70 mem 70
scoreboard players set #75 mem 75
scoreboard players set #80 mem 80
scoreboard players set #85 mem 85
scoreboard players set #90 mem 90
scoreboard players set #95 mem 95
scoreboard players set #100 mem 100
scoreboard players set #182 mem 182
scoreboard players set #950 mem 950
scoreboard players set #1000 mem 1000

scoreboard objectives add hp health "❤"
scoreboard objectives setdisplay list hp
scoreboard objectives setdisplay below_name hp

scoreboard objectives remove temp
scoreboard objectives add temp dummy "缓存"

# 触发接口
function modules:basic/events/init

# ---------------------------------------------
#  Debug
# ---------------------------------------------

scoreboard objectives add debug dummy "Debug 选项"
execute unless score $track_damage debug matches 0.. run scoreboard players set $track_damage debug 0
execute unless score $track_death_info debug matches 0.. run scoreboard players set $track_death_info debug 0
execute unless score $skill_heal debug matches 0.. run scoreboard players set $skill_heal debug 0
execute unless score $skill_cd debug matches 0.. run scoreboard players set $skill_cd debug 0
execute unless score $skill_friendly_fire debug matches 0.. run scoreboard players set $skill_friendly_fire debug 0
execute unless score $skill_respawn debug matches 0.. run scoreboard players set $skill_respawn debug 0
execute unless score $track_ray_tp debug matches 0.. run scoreboard players set $track_ray_tp debug 0
execute unless score $track_ray_move debug matches 0.. run scoreboard players set $track_ray_move debug 0
execute unless score $stat_elo debug matches 0.. run scoreboard players set $stat_elo debug 0
execute unless score $stat_condition debug matches 0.. run scoreboard players set $stat_condition debug 0
execute unless score $info_tip_hide debug matches 0.. run scoreboard players set $info_tip_hide debug 0
execute unless score $info_hud debug matches 0.. run scoreboard players set $info_hud debug 0
execute unless score $info_refresh_inv debug matches 0.. run scoreboard players set $info_refresh_inv debug 0
execute unless score $info_ignore_afk debug matches 0.. run scoreboard players set $info_ignore_afk debug 0
execute unless score $map_time debug matches 0.. run scoreboard players set $map_time debug 0
execute unless score $map_marker debug matches 0.. run scoreboard players set $map_marker debug 0
execute unless score $system_f3 debug matches 0.. run scoreboard players set $system_f3 debug 0
execute unless score $balance_team debug matches 0.. run scoreboard players set $balance_team debug 0
execute unless score $balance_dynamic debug matches 0.. run scoreboard players set $balance_dynamic debug 0
execute unless score $mutation_count debug matches 0.. run scoreboard players set $mutation_count debug 0
execute unless score $mutation_speed debug matches 0.. run scoreboard players set $mutation_speed debug 0
