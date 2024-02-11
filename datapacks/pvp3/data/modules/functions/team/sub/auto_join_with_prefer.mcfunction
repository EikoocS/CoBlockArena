
function modules:team/sub/update

# 强制重新分队
execute if score $balance_team debug matches 0 if score $team_diff mem matches 1.. if score #red mem = #max mem if entity @s[team=red] run function modules:team/sub/auto_join
execute if score $balance_team debug matches 0 if score $team_diff mem matches 1.. if score #blue mem = #max mem if entity @s[team=blue] run function modules:team/sub/auto_join
execute if score $balance_team debug matches 0 if score $team_diff mem matches 1.. if score #green mem = #max mem if entity @s[team=green] run function modules:team/sub/auto_join
execute if score $balance_team debug matches 0 if score $team_diff mem matches 1.. if score #yellow mem = #max mem if entity @s[team=yellow] run function modules:team/sub/auto_join
