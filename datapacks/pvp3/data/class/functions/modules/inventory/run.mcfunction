scoreboard players set @s refresh_inv_cd 0

execute if score $skill_cd debug matches 3 run function class:modules/cooldown/tick2_global

# 设置物品栏
function class:modules/inventory/events/item
item replace entity @s[tag=invisible] armor.head with air
item replace entity @s[tag=invisible] armor.chest with air
item replace entity @s[tag=invisible] armor.legs with air
item replace entity @s[tag=invisible] armor.feet with air

# 设置格子中的物品
execute if entity @s[scores={count1=0..}] run function class:modules/inventory/slot_1
execute if entity @s[scores={count2=0..}] run function class:modules/inventory/slot_2
execute if entity @s[scores={count3=0..}] run function class:modules/inventory/slot_3
execute if entity @s[scores={count4=0..}] run function class:modules/inventory/slot_4
execute if entity @s[scores={count5=0..}] run function class:modules/inventory/slot_5
execute if entity @s[scores={count6=0..}] run function class:modules/inventory/slot_6
execute if entity @s[scores={count7=0..}] run function class:modules/inventory/slot_7
execute if entity @s[scores={count8=0..}] run function class:modules/inventory/slot_8
execute if entity @s[scores={count9=0..}] run function class:modules/inventory/slot_9

# 设置护甲颜色
execute if entity @s[team=red] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.head class:set_cloth_color/red
execute if entity @s[team=blue] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.head class:set_cloth_color/blue
execute if entity @s[team=green] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.head class:set_cloth_color/green
execute if entity @s[team=yellow] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.head class:set_cloth_color/yellow
execute if entity @s[team=red] unless entity @s[nbt={Inventory:[{Slot:102b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.chest class:set_cloth_color/red
execute if entity @s[team=blue] unless entity @s[nbt={Inventory:[{Slot:102b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.chest class:set_cloth_color/blue
execute if entity @s[team=green] unless entity @s[nbt={Inventory:[{Slot:102b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.chest class:set_cloth_color/green
execute if entity @s[team=yellow] unless entity @s[nbt={Inventory:[{Slot:102b,tag:{NeedColor:0b}}]}] run item modify entity @s armor.chest class:set_cloth_color/yellow

function class:modules/inventory/events/description
