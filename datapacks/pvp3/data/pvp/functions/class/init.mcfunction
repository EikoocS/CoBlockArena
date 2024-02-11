execute unless score $1 class matches -2147483648..2147483647 run scoreboard players set $1 class 1
execute unless score $2 class matches -2147483648..2147483647 run scoreboard players set $2 class 2
execute unless score $3 class matches -2147483648..2147483647 run scoreboard players set $3 class 3
execute unless score $4 class matches -2147483648..2147483647 run scoreboard players set $4 class 5

fill 4 245 22 9 244 22 air

# 游侠
setblock 4 245 22 minecraft:barrel{Items:[{Count:1b,Slot:0b,id:"minecraft:bow",tag:{AttributeModifiers:[],Damage:0,HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用长弓进行远距离的精准射击。","italic": false,"color":"gray"}','{"text":"借助不同种类的箭矢，可以达成不同的效果。","italic": false,"color":"gray"}','[{"text":"定位: 远程   ","italic": false,"color":"gold"},{"text":"偏好时段: 任意   ","color":"dark_aqua"},{"text":"复杂度: 高","color":"red"}]'],Name:'[{"text":"","italic":false},{"text":"游侠","color":"white"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}},{Count:1b,Slot:1b,id:"minecraft:bow",tag:{AttributeModifiers:[],Damage:0,Enchantments:[{id:"lure",lvl:1}],HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用长弓进行远距离的精准射击。","italic": false,"color":"gray"}','{"text":"借助不同种类的箭矢，可以达成不同的效果。","italic": false,"color":"gray"}','[{"text":"定位: 远程   ","italic": false,"color":"gold"},{"text":"偏好时段: 任意   ","color":"dark_aqua"},{"text":"复杂度: 高","color":"red"}]'],Name:'{"text":"游侠 - 已选择","italic":false,"color":"aqua"}'}}}]}

# 暗影
setblock 5 245 22 minecraft:barrel{Items:[{Count:1b,Slot:0b,id:"minecraft:netherite_hoe",tag:{AttributeModifiers:[],Damage:0,HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"来去无踪的暗杀者。在隐身状态下寻找机会，","italic": false,"color":"gray"}','{"text":"发动致命一击，然后迅速脱离。","italic": false,"color":"gray"}','[{"text":"定位: 刺客   ","italic": false,"color":"gold"},{"text":"偏好时段: 夜晚   ","color":"dark_aqua"},{"text":"复杂度: 中","color":"red"}]'],Name:'[{"text":"","italic":false},{"text":"暗影","color":"white"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}},{Count:1b,Slot:1b,id:"minecraft:netherite_hoe",tag:{AttributeModifiers:[],Damage:0,Enchantments:[{id:"lure",lvl:1}],HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"来去无踪的暗杀者。在隐身状态下寻找机会，","italic": false,"color":"gray"}','{"text":"发动致命一击，然后迅速脱离。","italic": false,"color":"gray"}','[{"text":"定位: 刺客   ","italic": false,"color":"gold"},{"text":"偏好时段: 夜晚   ","color":"dark_aqua"},{"text":"复杂度: 中","color":"red"}]'],Name:'{"text":"暗影 - 已选择","italic":false,"color":"aqua"}'}}}]}

# 突袭者
setblock 6 245 22 minecraft:barrel{Items:[{Count:1b,Slot:0b,id:"minecraft:iron_axe",tag:{AttributeModifiers:[],Damage:0,HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用战斧砍杀的狂战士，擅长快速接近敌人。","italic": false,"color":"gray"}','{"text":"还可以使用劫掠兽来协助作战。","italic": false,"color":"gray"}','[{"text":"定位: 近战   ","italic": false,"color":"gold"},{"text":"偏好时段: 任意   ","color":"dark_aqua"},{"text":"复杂度: 低","color":"red"}]'],Name:'[{"text":"","italic":false},{"text":"突袭者","color":"white"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}},{Count:1b,Slot:1b,id:"minecraft:iron_axe",tag:{AttributeModifiers:[],Damage:0,Enchantments:[{id:"lure",lvl:1}],HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用战斧砍杀的狂战士，擅长快速接近敌人。","italic": false,"color":"gray"}','{"text":"还可以使用劫掠兽来协助作战。","italic": false,"color":"gray"}','[{"text":"定位: 近战   ","italic": false,"color":"gold"},{"text":"偏好时段: 任意   ","color":"dark_aqua"},{"text":"复杂度: 低","color":"red"}]'],Name:'{"text":"突袭者 - 已选择","italic":false,"color":"aqua"}'}}}]}

# 海嗣
setblock 7 245 22 minecraft:barrel{Items:[{Count:1b,Slot:0b,id:"minecraft:trident",tag:{AttributeModifiers:[],Damage:0,HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"擅长投掷三叉戟引来闪电，","italic": false,"color":"gray"}','{"text":"或者布下陷阱等待敌人自取灭亡。","italic": false,"color":"gray"}','[{"text":"定位: 远程   ","italic": false,"color":"gold"},{"text":"偏好时段: 夜晚   ","color":"dark_aqua"},{"text":"复杂度: 中","color":"red"}]'],Name:'[{"text":"","italic":false},{"text":"海嗣","color":"white"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}},{Count:1b,Slot:1b,id:"minecraft:trident",tag:{AttributeModifiers:[],Damage:0,Enchantments:[{id:"lure",lvl:1}],HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"擅长投掷三叉戟引来闪电，","italic": false,"color":"gray"}','{"text":"或者布下陷阱等待敌人自取灭亡。","italic": false,"color":"gray"}','[{"text":"定位: 远程   ","italic": false,"color":"gold"},{"text":"偏好时段: 夜晚   ","color":"dark_aqua"},{"text":"复杂度: 中","color":"red"}]'],Name:'{"text":"海嗣 - 已选择","italic":false,"color":"aqua"}'}}}]}

# 耀骑士
setblock 8 245 22 minecraft:barrel{Items:[{Count:1b,Slot:0b,id:"minecraft:golden_sword",tag:{AttributeModifiers:[],Damage:0,HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用利剑与坚盾的重装战士，","italic": false,"color":"gray"}','{"text":"还能掷出新星进行短距离传送。","italic": false,"color":"gray"}','[{"text":"定位: 近战   ","italic": false,"color":"gold"},{"text":"偏好时段: 白昼   ","color":"dark_aqua"},{"text":"复杂度: 低","color":"red"}]'],Name:'[{"text":"","italic":false},{"text":"耀骑士","color":"white"}," - 按 [",{"keybind":"key.swapOffhand"},"] 选择"]'}}},{Count:1b,Slot:1b,id:"minecraft:golden_sword",tag:{AttributeModifiers:[],Damage:0,Enchantments:[{id:"lure",lvl:1}],HideFlags:1023,Unbreakable:1b,display:{Lore:['{"text":"使用利剑与坚盾的重装战士，","italic": false,"color":"gray"}','{"text":"还能掷出新星进行短距离传送。","italic": false,"color":"gray"}','[{"text":"定位: 近战   ","italic": false,"color":"gold"},{"text":"偏好时段: 白昼   ","color":"dark_aqua"},{"text":"复杂度: 低","color":"red"}]'],Name:'{"text":"耀骑士 - 已选择","italic":false,"color":"aqua"}'}}}]}

function pvp:class/refresh_storage