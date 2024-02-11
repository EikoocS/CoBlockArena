execute as @e[type=#modules:projectile/track_id,tag=!owner_marked] at @s run function modules:projectile/mark_owner
execute as @e[type=#modules:projectile/check,tag=!projectile_land] at @s run function modules:projectile/tick1_real
