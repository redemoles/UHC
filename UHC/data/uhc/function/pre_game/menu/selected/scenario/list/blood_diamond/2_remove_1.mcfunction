
#> uhc:pre_game/menu/selection/scenario/list/blood_diamond/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Fin Palier 1
execute if score @s uhc.menu.scenario.blood_diamond matches 3 unless score #end_tier_1 uhc.scenario.blood_diamond.tier matches 0 run scoreboard players remove #end_tier_1 uhc.scenario.blood_diamond.tier 1
execute if score @s uhc.menu.scenario.blood_diamond matches 11 unless score #end_tier_1 uhc.scenario.blood_diamond.tier matches 0 run scoreboard players remove #end_tier_1 uhc.scenario.blood_diamond.tier 1

# Fin Palier 2
execute if score @s uhc.menu.scenario.blood_diamond matches 4 unless score #mined_tier_2 uhc.scenario.blood_diamond.tier matches 0 run scoreboard players remove #mined_tier_2 uhc.scenario.blood_diamond.tier 1
execute if score @s uhc.menu.scenario.blood_diamond matches 12 unless score #mined_tier_2 uhc.scenario.blood_diamond.tier matches 0 run scoreboard players remove #mined_tier_2 uhc.scenario.blood_diamond.tier 1

# Palier 2 - Probabilité de lingot d'or
execute if score @s uhc.menu.scenario.blood_diamond matches 13 if score #tier_2_gold_ingot uhc.scenario.blood_diamond.setup matches 1.. run scoreboard players add #tier_2_diamond uhc.scenario.blood_diamond.setup 1

execute if score @s uhc.menu.scenario.blood_diamond matches 13 run scoreboard players remove #tier_2_gold_ingot uhc.scenario.blood_diamond.setup 1
execute if score @s uhc.menu.scenario.blood_diamond matches 13 if score #tier_2_gold_ingot uhc.scenario.blood_diamond.setup matches ..0 run scoreboard players set #tier_2_gold_ingot uhc.scenario.blood_diamond.setup 0

# Palier 2 - Probabilité de dégâts
execute if score @s uhc.menu.scenario.blood_diamond matches 14 if score #tier_2_damage uhc.scenario.blood_diamond.setup matches 1.. run scoreboard players add #tier_2_diamond uhc.scenario.blood_diamond.setup 1

execute if score @s uhc.menu.scenario.blood_diamond matches 14 run scoreboard players remove #tier_2_damage uhc.scenario.blood_diamond.setup 1
execute if score @s uhc.menu.scenario.blood_diamond matches 14 if score #tier_2_damage uhc.scenario.blood_diamond.setup matches ..0 run scoreboard players set #tier_2_damage uhc.scenario.blood_diamond.setup 0

# Palier 2 - Probabilité de don de diamant
execute if score @s uhc.menu.scenario.blood_diamond matches 15 if score #tier_2_gift uhc.scenario.blood_diamond.setup matches 1.. run scoreboard players add #tier_2_diamond uhc.scenario.blood_diamond.setup 1

execute if score @s uhc.menu.scenario.blood_diamond matches 15 run scoreboard players remove #tier_2_gift uhc.scenario.blood_diamond.setup 1
execute if score @s uhc.menu.scenario.blood_diamond matches 15 if score #tier_2_gift uhc.scenario.blood_diamond.setup matches ..0 run scoreboard players set #tier_2_gift uhc.scenario.blood_diamond.setup 0

scoreboard players operation #end_tier_2 uhc.scenario.blood_diamond.tier = #mined_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players operation #end_tier_2 uhc.scenario.blood_diamond.tier += #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.end_tier_1 int 1 run scoreboard players get #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.end_tier_2 int 1 run scoreboard players get #end_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players add #end_tier_1 uhc.scenario.blood_diamond.tier 1
scoreboard players add #end_tier_2 uhc.scenario.blood_diamond.tier 1
execute store result storage uhc:scenario blood_diamond.start_tier_2 int 1 run scoreboard players get #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.start_tier_3 int 1 run scoreboard players get #end_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players remove #end_tier_1 uhc.scenario.blood_diamond.tier 1
scoreboard players remove #end_tier_2 uhc.scenario.blood_diamond.tier 1
execute store result storage uhc:scenario blood_diamond.mined_tier_2 int 1 run scoreboard players get #mined_tier_2 uhc.scenario.blood_diamond.tier

execute store result storage uhc:scenario blood_diamond.tier_2_damage int 1 run scoreboard players get #tier_2_damage uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_gold_ingot int 1 run scoreboard players get #tier_2_gold_ingot uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_diamond int 1 run scoreboard players get #tier_2_diamond uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_gift int 1 run scoreboard players get #tier_2_gift uhc.scenario.blood_diamond.setup
