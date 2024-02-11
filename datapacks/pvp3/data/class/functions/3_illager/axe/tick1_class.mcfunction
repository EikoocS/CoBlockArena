# 检测副手
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:300}}]}] run function class:3_illager/axe/trigger_failed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:301}}]}] run function class:3_illager/axe/trigger

# 技能持续
execute if entity @s[scores={3_axe_last=1..}] run function class:3_illager/axe/skill_continue