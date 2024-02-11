scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 6
function modules:random
execute if score #random mem = $mutation_last mem run function modules:mutation/random_mutation_loop