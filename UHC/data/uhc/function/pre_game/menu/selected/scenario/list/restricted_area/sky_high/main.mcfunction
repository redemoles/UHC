
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/main
#
# @within			uhc:pre_game/menu/selection/scenario/pages/1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/1_remove_10
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/2_remove_1
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/3_add_1
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/4_add_10

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_sky_high_timer"}] run scoreboard players set @s uhc.menu.scenario.restricted_area 3
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_sky_high_damage_type"}] run function uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/damage_type
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"scenario_sky_high_height"}] run scoreboard players set @s uhc.menu.scenario.restricted_area 4
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"scenario_sky_high_ender_pearl_gift"}] run scoreboard players set @s uhc.menu.scenario.restricted_area 5
execute unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"scenario_sky_high_ender_pearl_timer"}] run scoreboard players set @s uhc.menu.scenario.restricted_area 6
