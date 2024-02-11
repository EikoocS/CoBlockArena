# 检测触水
tag @e remove in_water
execute as @e[type=#modules:living] at @s if block ~ ~.13 ~ #modules:harmful unless entity @s[type=player,gamemode=!adventure] unless score $mutation mem matches 5 run tag @s add in_water
execute as @a[tag=in_water,scores={class=4}] unless entity @s[scores={4_water_last=0,4_water_storage=0}] run tag @s remove in_water
execute as @e[tag=in_water] at @s run function pvp:water