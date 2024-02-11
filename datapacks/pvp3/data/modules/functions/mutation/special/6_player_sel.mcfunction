tag @s add 6_player_sel
execute as @e[tag=6_marker_sel] if score @s player_id = @p[tag=6_player_sel] player_id run tag @s add 6_marker_sel2
tag @s remove 6_player_sel