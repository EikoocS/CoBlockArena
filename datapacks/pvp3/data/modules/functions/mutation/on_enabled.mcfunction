scoreboard players operation $mutation mem = $mutation_new mem

# 记录上一个突变
scoreboard players operation $mutation_last mem = $mutation mem

# 设置血量
execute if score $mutation mem matches 1 as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 12
execute if score $mutation mem matches 1 as @a[scores={state=2,hp=20..}] if score @s class matches 3 run effect give @s minecraft:instant_health 2 0 true
execute if score $mutation mem matches 1 as @a[scores={state=2,hp=12..}] unless score @s class matches 3 run effect give @s minecraft:instant_health 2 0 true

# 设置 bossbar
scoreboard players set $mutation_bossbar mem 0
execute if score $mutation mem matches 2 run scoreboard players set $mutation_bossbar mem 1
execute if score $mutation mem matches 6 run scoreboard players set $mutation_bossbar mem 1
bossbar set modules:mutation value 0
function modules:update_bossbar