# 未使用的格子
item replace entity @s armor.feet with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.head with minecraft:air
item replace entity @s weapon.offhand with air
item replace entity @s hotbar.0 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.8 with minecraft:air

# 选职业物品
function pvp:class/refresh_inventory

# 送钟
execute if score $daytime mem matches ..449 run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：黎明（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 450..4499 run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：上午（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 4500..7499 run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：晌午（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 7500..11999 run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：下午（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 12000..12999 run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：傍晚（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 13000..13799 run item replace entity @s hotbar.6 with amethyst_block{display:{Name:'{"text":"当前时段：黄昏（夜晚）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 13800..14999 run item replace entity @s hotbar.6 with amethyst_block{display:{Name:'{"text":"当前时段：入夜（夜晚）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 13800..14999 run item replace entity @s hotbar.6 with amethyst_block{display:{Name:'{"text":"当前时段：午夜（夜晚）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 15000..22199 run item replace entity @s hotbar.6 with amethyst_block{display:{Name:'{"text":"当前时段：深夜（夜晚）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 22200..22999 run item replace entity @s hotbar.6 with amethyst_block{display:{Name:'{"text":"当前时段：日出（夜晚）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}
execute if score $daytime mem matches 23000.. run item replace entity @s hotbar.6 with raw_gold_block{display:{Name:'{"text":"当前时段：黎明（白昼）","color":"white","italic":false}',Lore:['{"text":"部分技能会随着昼夜交替发生变化，","italic":false,"color":"gray"}','{"text":"有的职业在特定时段会变得更强！","italic":false,"color":"gray"}']}}

# 开始物品
item replace entity @s hotbar.7 with crying_obsidian{display:{Name:'[{"text":"","italic":false,"color":"light_purple"},"按 [",{"keybind":"key.swapOffhand"},"] 返回大厅"]'}}