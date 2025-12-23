
#> uhc:pre_game/menu/selection/scenario/blood_diamond
#
# @within			uhc:pre_game/menu/selection/scenario/1
#			
#
# @description		Redirection
#

execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=1..}] inventory.1 *[minecraft:custom_data={Tags:"scenario_blood_diamond_enable"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/enable

execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=2..}] inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/2_remove_1
execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=2..}] inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/scenario/blood_diamond/3_add_1

execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=1..}] inventory.3 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_1"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 2
execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=1..}] inventory.4 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_2"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 3
execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=1..}] inventory.5 *[minecraft:custom_data={Tags:"scenario_blood_diamond_tier_3"}] run scoreboard players set @s uhc.menu.scenario.blood_diamond 4

execute unless items entity @s[scores={uhc.menu.scenario.blood_diamond=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/1
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run function uhc:pre_game/menu/load/scenario/blood_diamond/ with storage uhc:temp blood_diamond
