
#> uhc:in_game/scenario/blood_diamond/step_mid
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Palier 2 - Choix aléatoire de l'effet du Blood Diamond
#

execute store result score #random uhc.scenario.blood_diamond.temp run random value 1..100

execute at @s run tag @r[distance=0.1..,tag=uhc.player] add uhc.blood_diamond.receive

attribute @s minecraft:knockback_resistance modifier add uhc.knockback_resistance.temp 1 add_value
execute if score #tier_2_damage uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp <= #random_damage_gold_ingot uhc.scenario.blood_diamond.temp at @s run damage @s 1 minecraft:generic_kill by @n[type=minecraft:marker,tag=uhc.scenario.blood_diamond]
execute if score #tier_2_gold_ingot uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp > #random_damage_gold_ingot uhc.scenario.blood_diamond.temp if score #random uhc.scenario.blood_diamond.temp <= #random_gold_ingot_diamond uhc.scenario.blood_diamond.temp run give @s minecraft:gold_ingot 1
execute if score #tier_2_gold_ingot uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp > #random_damage_gold_ingot uhc.scenario.blood_diamond.temp if score #random uhc.scenario.blood_diamond.temp <= #random_gold_ingot_diamond uhc.scenario.blood_diamond.temp if score #double_ores uhc.scenario matches 1 run give @s minecraft:gold_ingot 1
execute if score #tier_2_diamond uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp > #random_gold_ingot_diamond uhc.scenario.blood_diamond.temp if score #random uhc.scenario.blood_diamond.temp <= #random_diamond_gift uhc.scenario.blood_diamond.temp run give @s minecraft:diamond 1
execute if score #tier_2_diamond uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp > #random_gold_ingot_diamond uhc.scenario.blood_diamond.temp if score #random uhc.scenario.blood_diamond.temp <= #random_diamond_gift uhc.scenario.blood_diamond.temp if score #double_ores uhc.scenario matches 1 run give @s minecraft:diamond 1
execute if score #tier_2_gift uhc.scenario.blood_diamond.setup matches 1.. if score #random uhc.scenario.blood_diamond.temp > #random_diamond_gift uhc.scenario.blood_diamond.temp run give @p[tag=uhc.blood_diamond.receive] minecraft:diamond
attribute @s minecraft:knockback_resistance modifier remove uhc.knockback_resistance.temp

## Joueur
$title @s[scores={uhc.scenario.blood_diamond.mined=$(start_tier_2)}] title [{"text":""}]
function uhc:translation/in_game/scenario/blood_diamond_step_mid with storage uhc:scenario blood_diamond

tag @p[tag=uhc.blood_diamond.receive] remove uhc.blood_diamond.receive
