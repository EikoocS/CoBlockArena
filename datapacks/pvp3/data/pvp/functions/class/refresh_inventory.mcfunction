# 职业 1
execute unless score @s class = $1 class run item replace entity @s hotbar.1 from block 4 244 22 container.0
execute if score @s class = $1 class run item replace entity @s hotbar.1 from block 4 244 22 container.1

# 职业 2
execute unless score @s class = $2 class run item replace entity @s hotbar.2 from block 5 244 22 container.0
execute if score @s class = $2 class run item replace entity @s hotbar.2 from block 5 244 22 container.1

# 职业 3
execute unless score @s class = $3 class run item replace entity @s hotbar.3 from block 6 244 22 container.0
execute if score @s class = $3 class run item replace entity @s hotbar.3 from block 6 244 22 container.1

# 职业 4
execute unless score @s class = $4 class run item replace entity @s hotbar.4 from block 7 244 22 container.0
execute if score @s class = $4 class run item replace entity @s hotbar.4 from block 7 244 22 container.1
