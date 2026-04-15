
#> uhc:in_game/scenario/blood_diamond/trade_uhc/step_damage_1
#
# @within			uhc:in_game/scenario/blood_diamond/trade_uhc/step_damage
#
#
# @description		Palier 3 - Dégâts progressifs
#

function uhc:translation/in_game/scenario/blood_diamond_trade_uhc_step_damage with storage uhc:scenario blood_diamond

attribute @s minecraft:knockback_resistance modifier add uhc.knockback_resistance.temp 1 add_value
$execute at @s run damage @s $(damage) minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_diamond]
attribute @s minecraft:knockback_resistance modifier remove uhc.knockback_resistance.temp
