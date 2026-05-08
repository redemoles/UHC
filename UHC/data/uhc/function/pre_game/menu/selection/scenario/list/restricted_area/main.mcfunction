
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/main
#
# @within			uhc:pre_game/menu/selection/scenario/pages/*
#			
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_go_to_hell_enable"}] run return run function uhc:pre_game/menu/selection/scenario/list/restricted_area/go_to_hell/enable
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario_sky_high_enable"}] run return run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/enable

execute if score #go_to_hell uhc.scenario matches 1 run function uhc:pre_game/menu/selection/scenario/list/restricted_area/go_to_hell/main
execute if score #sky_high uhc.scenario matches 1 run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/main

execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario_restricted_area_disable"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/disable
execute if score @s uhc.menu.scenario.main matches 1 unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute if score @s uhc.menu.scenario.main matches 2 unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/2/main
function uhc:pre_game/menu/load/scenario/restricted_area/main
