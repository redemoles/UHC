
#> uhc:pre_game/menu/selected/scenario/list/blood_diamond/main
#
# @within			uhc:pre_game/menu/selected/scenario/pages/1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.blood_diamond matches ..10 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run return run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/enable_progressive_mode
execute if score @s uhc.menu.scenario.blood_diamond matches ..10 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run return run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/enable_original_mode
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario_blood_diamond"}] run return run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/disable

execute if score @s uhc.menu.scenario.blood_diamond matches 12.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 13
execute if score @s uhc.menu.scenario.blood_diamond matches 12.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 14
execute if score @s uhc.menu.scenario.blood_diamond matches 12.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 15

execute if score @s uhc.menu.scenario.blood_diamond matches 13.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-5"}] run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/1_remove_5
execute if score @s uhc.menu.scenario.blood_diamond matches 03.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/2_remove_1
execute if score @s uhc.menu.scenario.blood_diamond matches 03.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/3_add_1
execute if score @s uhc.menu.scenario.blood_diamond matches 13.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+5"}] run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/4_add_5

execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches ..10 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 3
execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches ..10 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run return run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/tier_menu/tier_2
execute if score @s uhc.menu.scenario.blood_diamond matches 11 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 3
execute if score @s uhc.menu.scenario.blood_diamond matches 12.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 4
execute if score @s uhc.menu.scenario.blood_diamond matches 12.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 11
execute if score @s uhc.menu.scenario.blood_diamond matches 11 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 12

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages_1
function uhc:pre_game/menu/load/scenario/blood_diamond
