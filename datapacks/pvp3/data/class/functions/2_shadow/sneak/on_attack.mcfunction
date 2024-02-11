advancement revoke @s only class:2_shadow/sneak/on_attack
execute if entity @s[scores={2_sneak_state=1,class=2,state=2..}] run title @s actionbar {"color":"gold","text":"⚠ 暗影形态已解除","bold":true}
execute if entity @s[scores={2_sneak_state=1,class=2,state=2..}] run function class:2_shadow/sneak/off