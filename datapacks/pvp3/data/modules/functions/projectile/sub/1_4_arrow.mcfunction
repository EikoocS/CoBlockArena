advancement revoke @s only modules:projectile/1_4_arrow

tag @s add projectile_owner
execute as @e[type=arrow,nbt={Color:16752969},tag=!projectile_land] at @s if score @s player_id = @p[tag=projectile_owner] player_id run function modules:projectile/events/land
tag @s remove projectile_owner