# 清理背包
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:9b}]}] inventory.0 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:10b}]}] inventory.1 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:11b}]}] inventory.2 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:12b}]}] inventory.3 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:13b}]}] inventory.4 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:14b}]}] inventory.5 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:15b}]}] inventory.6 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:16b}]}] inventory.7 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:17b}]}] inventory.8 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:18b}]}] inventory.9 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:19b}]}] inventory.10 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:20b}]}] inventory.11 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:21b}]}] inventory.12 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:22b}]}] inventory.13 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:23b}]}] inventory.14 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:24b}]}] inventory.15 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:25b}]}] inventory.16 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:26b}]}] inventory.17 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:27b}]}] inventory.18 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:28b}]}] inventory.19 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:29b}]}] inventory.20 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:30b}]}] inventory.21 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:31b}]}] inventory.22 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:32b}]}] inventory.23 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:33b}]}] inventory.24 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:34b}]}] inventory.25 with minecraft:air
item replace entity @a[gamemode=!creative,nbt={Inventory:[{Slot:35b}]}] inventory.26 with minecraft:air

function pvp:state/train/tick16

# 进度
execute as @a[x=-100000,y=0,z=-100000,dx=200000,dy=10000,dz=200000,scores={tip_0_tutorial=7..,state=2}] at @s unless entity @e[tag=map_marker,distance=..100] run advancement grant @s only pvp:hidden/world_border