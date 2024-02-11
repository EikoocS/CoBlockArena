
function class:4_oceancat/tick1_global
execute as @a[scores={class=1,state=2..}] at @s run function class:1_ranger/tick1_class
execute as @a[scores={class=2,state=2..}] at @s run function class:2_shadow/tick1_class
execute as @a[scores={class=3,state=2..}] at @s run function class:3_illager/tick1_class
execute as @a[scores={class=4,state=2..}] at @s run function class:4_oceancat/tick1_class
execute as @a[scores={class=5,state=2..}] at @s run function class:5_knight/tick1_class

execute as @a[scores={state=2..}] at @s run function class:modules/inventory/tick1_class
execute as @a[scores={state=2..}] at @s run function class:modules/sneak/tick1_class
