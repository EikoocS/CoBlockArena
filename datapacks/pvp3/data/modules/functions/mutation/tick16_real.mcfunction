scoreboard players add $mutation_tip mem 1

execute if score $mutation_tip mem matches 1 run bossbar set bossbar:white name ["",{"text":"⚕ 突变 ⚕   ", "color":"gold"},{"selector":"@e[tag=mutation_name]"}]
execute if score $mutation_tip mem matches 1 run bossbar set bossbar:red name ["",{"text":"⚕ 突变 ⚕   ", "color":"red"},{"selector":"@e[tag=mutation_name]"}]
execute if score $mutation_tip mem matches 1 run bossbar set bossbar:blue name ["",{"text":"⚕ 突变 ⚕   ", "color":"aqua"},{"selector":"@e[tag=mutation_name]"}]
execute if score $mutation_tip mem matches 1 run bossbar set bossbar:green name ["",{"text":"⚕ 突变 ⚕   ", "color":"green"},{"selector":"@e[tag=mutation_name]"}]
execute if score $mutation_tip mem matches 1 run bossbar set bossbar:yellow name ["",{"text":"⚕ 突变 ⚕   ", "color":"yellow"},{"selector":"@e[tag=mutation_name]"}]

execute if score $mutation_tip mem matches 18 run bossbar set bossbar:white name ["",{"text":"⚕ ", "color":"gold"},{"selector":"@e[tag=mutation_name]", "color":"gold"},{"text":" ⚕   ", "color":"gold"},{"selector":"@e[tag=mutation_desc]"}]
execute if score $mutation_tip mem matches 18 run bossbar set bossbar:red name ["",{"text":"⚕ ", "color":"red"},{"selector":"@e[tag=mutation_name]", "color":"red"},{"text":" ⚕   ", "color":"red"},{"selector":"@e[tag=mutation_desc]"}]
execute if score $mutation_tip mem matches 18 run bossbar set bossbar:blue name ["",{"text":"⚕ ", "color":"aqua"},{"selector":"@e[tag=mutation_name]", "color":"aqua"},{"text":" ⚕   ", "color":"aqua"},{"selector":"@e[tag=mutation_desc]"}]
execute if score $mutation_tip mem matches 18 run bossbar set bossbar:green name ["",{"text":"⚕ ", "color":"green"},{"selector":"@e[tag=mutation_name]", "color":"green"},{"text":" ⚕   ", "color":"green"},{"selector":"@e[tag=mutation_desc]"}]
execute if score $mutation_tip mem matches 18 run bossbar set bossbar:yellow name ["",{"text":"⚕ ", "color":"yellow"},{"selector":"@e[tag=mutation_name]", "color":"yellow"},{"text":" ⚕   ", "color":"yellow"},{"selector":"@e[tag=mutation_desc]"}]

execute if score $mutation_tip mem matches 27.. run scoreboard players set $mutation_tip mem 0