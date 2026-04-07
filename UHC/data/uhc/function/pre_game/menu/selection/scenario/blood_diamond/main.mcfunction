
#> uhc:pre_game/menu/selection/scenario/blood_diamond/main
#
# @within			uhc:pre_game/menu/selection/scenario/pages/1
#			
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run function uhc:pre_game/menu/selection/scenario/blood_diamond/enable_progressive_mode
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run function uhc:pre_game/menu/selection/scenario/blood_diamond/enable_traditional_mode
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run function uhc:pre_game/menu/selection/scenario/blood_diamond/disable

execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 2.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selection/scenario/blood_diamond/2_remove_1
execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 2.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selection/scenario/blood_diamond/3_add_1

execute if score #blood_diamond uhc.scenario matches 1 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 2
execute if score #blood_diamond uhc.scenario matches 1 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 3

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
function uhc:pre_game/menu/load/scenario/blood_diamond/main with storage uhc:scenario blood_diamond
