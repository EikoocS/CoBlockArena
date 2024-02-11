# 血量改变
execute if score $mutation mem matches 1 as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 12
execute unless score $mutation mem matches 1 as @a[scores={state=2}] run attribute @s minecraft:generic.max_health base set 20