
# 记录统计信息

execute if entity @s[scores={class=1}] run scoreboard players add $1 statClassKill 1
execute if entity @s[scores={class=2}] run scoreboard players add $2 statClassKill 1
execute if entity @s[scores={class=3}] run scoreboard players add $3 statClassKill 1
execute if entity @s[scores={class=4}] run scoreboard players add $4 statClassKill 1
execute if entity @s[scores={class=5}] run scoreboard players add $5 statClassKill 1
execute if entity @s[scores={class=6}] run scoreboard players add $6 statClassKill 1

execute if entity @a[tag=victim,scores={class=1}] run scoreboard players add $1 statClassDeath 1
execute if entity @a[tag=victim,scores={class=2}] run scoreboard players add $2 statClassDeath 1
execute if entity @a[tag=victim,scores={class=3}] run scoreboard players add $3 statClassDeath 1
execute if entity @a[tag=victim,scores={class=4}] run scoreboard players add $4 statClassDeath 1
execute if entity @a[tag=victim,scores={class=5}] run scoreboard players add $5 statClassDeath 1
execute if entity @a[tag=victim,scores={class=6}] run scoreboard players add $6 statClassDeath 1
execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $1->$1 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $2->$1 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $3->$1 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $4->$1 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $5->$1 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=1}] run scoreboard players add $6->$1 statClassCrossKill 1

execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $1->$2 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $2->$2 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $3->$2 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $4->$2 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $5->$2 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=2}] run scoreboard players add $6->$2 statClassCrossKill 1

execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $1->$3 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $2->$3 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $3->$3 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $4->$3 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $5->$3 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=3}] run scoreboard players add $6->$3 statClassCrossKill 1

execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $1->$4 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $2->$4 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $3->$4 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $4->$4 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $5->$4 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=4}] run scoreboard players add $6->$4 statClassCrossKill 1

execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $1->$5 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $2->$5 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $3->$5 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $4->$5 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $5->$5 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=5}] run scoreboard players add $6->$5 statClassCrossKill 1

execute if entity @s[scores={class=1}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $1->$6 statClassCrossKill 1
execute if entity @s[scores={class=2}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $2->$6 statClassCrossKill 1
execute if entity @s[scores={class=3}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $3->$6 statClassCrossKill 1
execute if entity @s[scores={class=4}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $4->$6 statClassCrossKill 1
execute if entity @s[scores={class=5}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $5->$6 statClassCrossKill 1
execute if entity @s[scores={class=6}] if entity @a[tag=victim,scores={class=6}] run scoreboard players add $6->$6 statClassCrossKill 1
