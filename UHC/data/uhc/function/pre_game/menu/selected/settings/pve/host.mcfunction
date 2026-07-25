
#> uhc:pre_game/menu/selection/settings/pve/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute if score #lives uhc.data.setup matches 3.. unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_live_2"}] run function uhc:pre_game/menu/load/settings/pve/2_lives_left/preset_menu
execute if score #lives uhc.data.setup matches 2.. unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"settings_live_1"}] run function uhc:pre_game/menu/load/settings/pve/1_life_left/preset_menu
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_lives"}] run function uhc:pre_game/menu/load/settings/pve/lives_number/preset_menu
