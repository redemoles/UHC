
#> uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/main
#
# @within			uhc:pre_game/menu/selected/scenario/pages/1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/1_remove_10
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/2_remove_1
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/3_add_1
execute if score @s uhc.menu.scenario.restricted_area matches 3.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/4_add_10

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario_go_to_hell_timer"}] run scoreboard players set @s uhc.menu.scenario.restricted_area 3
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario_go_to_hell_damage_type"}] run function uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/damage_type
