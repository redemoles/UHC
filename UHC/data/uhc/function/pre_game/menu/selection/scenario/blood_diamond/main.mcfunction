
#> uhc:pre_game/menu/selection/scenario/blood_diamond/main
#
# @within			uhc:pre_game/menu/selection/scenario/page_1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.blood_diamond matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond_enable"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/enable

execute if score @s uhc.menu.scenario.blood_diamond matches 2.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/2_remove_1
execute if score @s uhc.menu.scenario.blood_diamond matches 2.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/3_add_1

execute if score @s uhc.menu.scenario.blood_diamond matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 2
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 3
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_3"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 4

execute if score @s uhc.menu.scenario.blood_diamond matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run function uhc:pre_game/menu/load/scenario/blood_diamond/ with storage uhc:scenario blood_diamond
