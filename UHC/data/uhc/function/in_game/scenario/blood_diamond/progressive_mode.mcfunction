
#> uhc:in_game/scenario/blood_diamond/progressive_mode
#
# @within			uhc:in_game/scenario/blood_diamond/tick
#
#
# @description		Choix aléatoire de l'effet du Blood Diamond
#

execute store result storage uhc:scenario blood_diamond.mined int 1 run scoreboard players get @s uhc.scenario.blood_diamond.mined

execute if score @s uhc.scenario.blood_diamond.mined matches 1 run title @s times 0s 2s 0.5s

$execute if score #trade_uhc uhc.scenario matches 0 if score @s uhc.scenario.blood_diamond.mined matches 1..$(end_tier_1) run function uhc:in_game/scenario/blood_diamond/step_safe with storage uhc:scenario blood_diamond
$execute if score #trade_uhc uhc.scenario matches 0 if score @s uhc.scenario.blood_diamond.mined matches $(start_tier_2)..$(end_tier_2) run function uhc:in_game/scenario/blood_diamond/step_mid with storage uhc:scenario blood_diamond
$execute if score #trade_uhc uhc.scenario matches 0 if score @s uhc.scenario.blood_diamond.mined matches $(start_tier_3).. run function uhc:in_game/scenario/blood_diamond/step_damage with storage uhc:scenario blood_diamond

$execute if score #trade_uhc uhc.scenario matches 1 if score @s uhc.scenario.blood_diamond.mined matches 1..$(end_tier_1) run function uhc:in_game/scenario/blood_diamond/trade_uhc/step_safe with storage uhc:scenario blood_diamond
$execute if score #trade_uhc uhc.scenario matches 1 if score @s uhc.scenario.blood_diamond.mined matches $(start_tier_2)..$(end_tier_2) run function uhc:in_game/scenario/blood_diamond/trade_uhc/step_mid with storage uhc:scenario blood_diamond
$execute if score #trade_uhc uhc.scenario matches 1 if score @s uhc.scenario.blood_diamond.mined matches $(start_tier_3).. run function uhc:in_game/scenario/blood_diamond/trade_uhc/step_damage with storage uhc:scenario blood_diamond
