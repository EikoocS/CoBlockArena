# 伤害
effect give @s instant_damage 1 0 true
scoreboard players set @s mino_type_effect_instant 05020
scoreboard players operation @s mino_source_effect_instant = @e[tag=self,limit=1] player_id

# 发光
effect give @s[scores={statPlayerLevel=1}] glowing 3
effect give @s[scores={statPlayerLevel=2..3}] glowing 4
effect give @s[scores={statPlayerLevel=4}] glowing 5
title @s actionbar {"color":"gold","text":"⚠ 已被烁光新星照亮","bold":true}