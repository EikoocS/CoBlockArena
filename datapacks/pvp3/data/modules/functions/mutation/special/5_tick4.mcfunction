# 检测触水
execute as @e[type=#modules:living,x=1050,y=90,z=1050,distance=500..] at @s if block ~ ~.3 ~ #modules:harmful unless entity @s[type=player,gamemode=!adventure] run function modules:mutation/special/5_trigger
