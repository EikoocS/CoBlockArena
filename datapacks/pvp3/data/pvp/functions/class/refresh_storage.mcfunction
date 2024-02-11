execute if score $1 class matches 1 run clone 4 245 22 4 245 22 4 244 22
execute if score $1 class matches 2 run clone 5 245 22 5 245 22 4 244 22
execute if score $1 class matches 3 run clone 6 245 22 6 245 22 4 244 22
execute if score $1 class matches 4 run clone 7 245 22 7 245 22 4 244 22
execute if score $1 class matches 5 run clone 8 245 22 8 245 22 4 244 22

execute if score $2 class matches 1 run clone 4 245 22 4 245 22 5 244 22
execute if score $2 class matches 2 run clone 5 245 22 5 245 22 5 244 22
execute if score $2 class matches 3 run clone 6 245 22 6 245 22 5 244 22
execute if score $2 class matches 4 run clone 7 245 22 7 245 22 5 244 22
execute if score $2 class matches 5 run clone 8 245 22 8 245 22 5 244 22

execute if score $3 class matches 1 run clone 4 245 22 4 245 22 6 244 22
execute if score $3 class matches 2 run clone 5 245 22 5 245 22 6 244 22
execute if score $3 class matches 3 run clone 6 245 22 6 245 22 6 244 22
execute if score $3 class matches 4 run clone 7 245 22 7 245 22 6 244 22
execute if score $3 class matches 5 run clone 8 245 22 8 245 22 6 244 22

execute if score $4 class matches 1 run clone 4 245 22 4 245 22 7 244 22
execute if score $4 class matches 2 run clone 5 245 22 5 245 22 7 244 22
execute if score $4 class matches 3 run clone 6 245 22 6 245 22 7 244 22
execute if score $4 class matches 4 run clone 7 245 22 7 245 22 7 244 22
execute if score $4 class matches 5 run clone 8 245 22 8 245 22 7 244 22

execute as @a if score @s class matches 1.. unless score @s class = $1 class unless score @s class = $2 class unless score @s class = $3 class unless score @s class = $4 class run scoreboard players operation @s class = $1 class