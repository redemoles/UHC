
#> uhc:pre_game/menu/selection/settings/lives/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute if score #lives uhc.data.setup matches 2.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_live_1"}] run function uhc:pre_game/menu/load/settings/lives/live_1/preset_menu
execute if score #lives uhc.data.setup matches 3.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_live_2"}] run function uhc:pre_game/menu/load/settings/lives/live_2/preset_menu
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/load/settings/lives/start_in_sky/apply_change
