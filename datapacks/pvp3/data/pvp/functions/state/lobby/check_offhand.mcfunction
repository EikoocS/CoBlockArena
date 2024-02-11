
# 选职业
execute unless entity @s[nbt={Inventory:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b}]}] at @s run function pvp:class/switch_class

# 选队
execute unless data entity @s[scores={tip_0_tutorial=5..}] Inventory[{Slot:7b}] at @s run function pvp:state/lobby/in/switch_team
