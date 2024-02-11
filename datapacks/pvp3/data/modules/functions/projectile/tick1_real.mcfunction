
# 禁止捡起、在落地 10 秒后清理
data merge entity @s[type=arrow,tag=!projectile_checked] {pickup:0,life:1000,Tags:["projectile_checked"]}
data merge entity @s[type=trident,tag=!projectile_checked] {life:1000,Tags:["projectile_checked"]}

# 灭火
data modify entity @s[type=trident] Fire set value -20

# 检测落水
execute if block ~ ~ ~ #modules:harmful if entity @s[type=arrow] run function modules:projectile/on_water

# 检测新落地的箭
execute if entity @s[nbt={inGround:1b}] run function modules:projectile/on_land

# 触发移动事件
execute if entity @s[tag=!projectile_land] run function modules:projectile/on_move
