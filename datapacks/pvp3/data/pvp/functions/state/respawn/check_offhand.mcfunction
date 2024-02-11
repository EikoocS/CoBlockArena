
# 选职业
execute unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b}]}] at @s run function pvp:class/switch_class

# 回到大厅
execute unless data entity @s Inventory[{Slot:7b}] at @s run function pvp:state/respawn/return_lobby
