# 检测副手
execute if entity @s[scores={5_star_storage=1..,5_star_last=1..},nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:503}}]}] run function class:5_knight/star_tp/trigger
