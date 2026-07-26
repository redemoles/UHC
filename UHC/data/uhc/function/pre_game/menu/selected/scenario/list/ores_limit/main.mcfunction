
#> uhc:pre_game/menu/selected/scenario/list/ores_limit/main
#
# @within			uhc:pre_game/menu/selected/scenario/pages/2
#			
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_ores_limit"}] run return run function uhc:pre_game/menu/selected/scenario/list/ores_limit/gold_limit_enable
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_ores_limit"}] run return run function uhc:pre_game/menu/selected/scenario/list/ores_limit/diamond_limit_enable

execute if score #gold_limit uhc.scenario matches 1 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_ores_limit"}] run return run function uhc:pre_game/menu/selected/scenario/list/ores_limit/gold_limit_edit
execute if score #diamond_limit uhc.scenario matches 1 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_ores_limit"}] run return run function uhc:pre_game/menu/selected/scenario/list/ores_limit/diamond_limit_edit

execute if score @s uhc.menu.scenario.ores_limit matches 11.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-5"}] run function uhc:pre_game/menu/selected/scenario/list/ores_limit/1_remove_5
execute if score @s uhc.menu.scenario.ores_limit matches 11.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selected/scenario/list/ores_limit/2_remove_1
execute if score @s uhc.menu.scenario.ores_limit matches 11.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selected/scenario/list/ores_limit/3_add_1
execute if score @s uhc.menu.scenario.ores_limit matches 11.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+5"}] run function uhc:pre_game/menu/selected/scenario/list/ores_limit/4_add_5

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/2/main
function uhc:pre_game/menu/load/scenario/ores_limit
