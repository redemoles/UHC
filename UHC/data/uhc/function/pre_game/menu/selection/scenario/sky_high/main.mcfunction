
#> uhc:pre_game/menu/selection/scenario/sky_high/main
#
# @within			uhc:pre_game/menu/selection/scenario/page_1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_sky_high_enable"}] run return run function uhc:pre_game/menu/selection/scenario/sky_high/enable

execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selection/scenario/sky_high/1_remove_10
execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selection/scenario/sky_high/2_remove_1
execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selection/scenario/sky_high/3_add_1
execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selection/scenario/sky_high/4_add_10

execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario_sky_high_timer"}] run scoreboard players set @s uhc.menu.scenario.sky_high 1
execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario_sky_high_damage_type"}] run function uhc:pre_game/menu/selection/scenario/sky_high/damage_type
execute if score #sky_high uhc.scenario matches 1 if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"scenario_sky_high_height"}] run scoreboard players set @s uhc.menu.scenario.sky_high 2

execute if score @s uhc.menu.scenario.sky_high matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/2/main
execute if score @s uhc.menu.scenario.sky_high matches 1.. run function uhc:pre_game/menu/load/scenario/sky_high/menu with storage uhc:scenario sky_high
