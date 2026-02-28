
#> uhc:pre_game/menu/selection/scenario/go_to_hell
#
# @within			uhc:pre_game/menu/selection/scenario/page_1
#			
#
# @description		Redirection
#

execute if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario_go_to_hell_enable"}] run return run function uhc:pre_game/menu/load/scenario/go_to_hell/enable

execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/scenario/go_to_hell/1_remove_10
execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/scenario/go_to_hell/2_remove_1
execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/scenario/go_to_hell/3_add_1
execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/scenario/go_to_hell/4_add_10

execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario_go_to_hell_timer"}] run scoreboard players set @s uhc.menu.scenario.go_to_hell 1
execute if score #go_to_hell uhc.scenario matches 1 if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario_go_to_hell_damage_type"}] run function uhc:pre_game/menu/load/scenario/go_to_hell/damage_type


execute if score @s uhc.menu.scenario.go_to_hell matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/menu_1
execute if score @s uhc.menu.scenario.go_to_hell matches 1.. run function uhc:pre_game/menu/load/scenario/go_to_hell/menu with storage uhc:scenario go_to_hell
