
# 玩家表现

scoreboard objectives add statPlayerElo dummy "玩家长期表现"
scoreboard objectives add statPlayerEloCount dummy "ELO 记录次数"
scoreboard objectives add statPlayerKd dummy "玩家短期表现"
scoreboard objectives add statPlayerLevel dummy "玩家短期等级"

# 玩家统计

scoreboard objectives add statPlayerRound dummy "玩家总循环"
scoreboard objectives add statPlayerKill dummy "玩家总击杀"
scoreboard objectives add statPlayerDeath dummy "玩家总死亡"
scoreboard objectives add statPlayerDeathReal dummy "玩家包含自杀的总死亡"

scoreboard objectives add statPlayerCombo2 dummy "2 连杀次数"
scoreboard objectives add statPlayerCombo3 dummy "3 连杀次数"
scoreboard objectives add statPlayerCombo4 dummy "4 连杀次数"
scoreboard objectives add statPlayerCombo5 dummy "5 连杀次数"
scoreboard objectives add statPlayerCombo6 dummy "6 连杀次数"

scoreboard objectives add statPlayerClassKill1 dummy "玩家职业 1 击杀"
scoreboard objectives add statPlayerClassKill2 dummy "玩家职业 2 击杀"
scoreboard objectives add statPlayerClassKill3 dummy "玩家职业 3 击杀"
scoreboard objectives add statPlayerClassKill4 dummy "玩家职业 4 击杀"
scoreboard objectives add statPlayerClassKill5 dummy "玩家职业 5 击杀"
scoreboard objectives add statPlayerClassKill6 dummy "玩家职业 6 击杀"
scoreboard objectives add statPlayerClassDeath1 dummy "玩家职业 1 死亡"
scoreboard objectives add statPlayerClassDeath2 dummy "玩家职业 2 死亡"
scoreboard objectives add statPlayerClassDeath3 dummy "玩家职业 3 死亡"
scoreboard objectives add statPlayerClassDeath4 dummy "玩家职业 4 死亡"
scoreboard objectives add statPlayerClassDeath5 dummy "玩家职业 5 死亡"
scoreboard objectives add statPlayerClassDeath6 dummy "玩家职业 6 死亡"

# 职业统计

scoreboard objectives add statClassKill dummy "职业总击杀"
scoreboard players add $1 statClassKill 0
scoreboard players add $2 statClassKill 0
scoreboard players add $3 statClassKill 0
scoreboard players add $4 statClassKill 0
scoreboard players add $5 statClassKill 0
scoreboard players add $6 statClassKill 0
scoreboard objectives add statClassDeath dummy "职业总死亡"
scoreboard players add $1 statClassDeath 0
scoreboard players add $2 statClassDeath 0
scoreboard players add $3 statClassDeath 0
scoreboard players add $4 statClassDeath 0
scoreboard players add $5 statClassDeath 0
scoreboard players add $6 statClassDeath 0
scoreboard objectives add statClassSelectCycle dummy "职业轮换死亡计数"
scoreboard players add $1 statClassSelectCycle 0
scoreboard players add $2 statClassSelectCycle 0
scoreboard players add $3 statClassSelectCycle 0
scoreboard players add $4 statClassSelectCycle 0
scoreboard players add $5 statClassSelectCycle 0
scoreboard players add $6 statClassSelectCycle 0

scoreboard objectives add statClassSelectReal dummy "职业选择次数"
scoreboard players add $1 statClassSelectReal 0
scoreboard players add $2 statClassSelectReal 0
scoreboard players add $3 statClassSelectReal 0
scoreboard players add $4 statClassSelectReal 0
scoreboard players add $5 statClassSelectReal 0
scoreboard players add $6 statClassSelectReal 0
scoreboard objectives add statClassSelectPossible dummy "职业可能可选次数"
scoreboard players add $1 statClassSelectPossible 0
scoreboard players add $2 statClassSelectPossible 0
scoreboard players add $3 statClassSelectPossible 0
scoreboard players add $4 statClassSelectPossible 0
scoreboard players add $5 statClassSelectPossible 0
scoreboard players add $6 statClassSelectPossible 0

scoreboard objectives add statClassCrossKill dummy "职业交叉击杀"
scoreboard players add $1->$1 statClassCrossKill 0
scoreboard players add $2->$1 statClassCrossKill 0
scoreboard players add $3->$1 statClassCrossKill 0
scoreboard players add $4->$1 statClassCrossKill 0
scoreboard players add $5->$1 statClassCrossKill 0
scoreboard players add $6->$1 statClassCrossKill 0
scoreboard players add $1->$2 statClassCrossKill 0
scoreboard players add $2->$2 statClassCrossKill 0
scoreboard players add $3->$2 statClassCrossKill 0
scoreboard players add $4->$2 statClassCrossKill 0
scoreboard players add $5->$2 statClassCrossKill 0
scoreboard players add $6->$2 statClassCrossKill 0
scoreboard players add $1->$3 statClassCrossKill 0
scoreboard players add $2->$3 statClassCrossKill 0
scoreboard players add $3->$3 statClassCrossKill 0
scoreboard players add $4->$3 statClassCrossKill 0
scoreboard players add $5->$3 statClassCrossKill 0
scoreboard players add $6->$3 statClassCrossKill 0
scoreboard players add $1->$4 statClassCrossKill 0
scoreboard players add $2->$4 statClassCrossKill 0
scoreboard players add $3->$4 statClassCrossKill 0
scoreboard players add $4->$4 statClassCrossKill 0
scoreboard players add $5->$4 statClassCrossKill 0
scoreboard players add $6->$4 statClassCrossKill 0
scoreboard players add $1->$5 statClassCrossKill 0
scoreboard players add $2->$5 statClassCrossKill 0
scoreboard players add $3->$5 statClassCrossKill 0
scoreboard players add $4->$5 statClassCrossKill 0
scoreboard players add $5->$5 statClassCrossKill 0
scoreboard players add $6->$5 statClassCrossKill 0
scoreboard players add $1->$6 statClassCrossKill 0
scoreboard players add $2->$6 statClassCrossKill 0
scoreboard players add $3->$6 statClassCrossKill 0
scoreboard players add $4->$6 statClassCrossKill 0
scoreboard players add $5->$6 statClassCrossKill 0
scoreboard players add $6->$6 statClassCrossKill 0
