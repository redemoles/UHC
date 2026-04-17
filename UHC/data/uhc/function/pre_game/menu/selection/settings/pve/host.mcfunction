
#> uhc:pre_game/menu/selection/settings/pve/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_absorption"}] run return run function uhc:pre_game/menu/load/settings/pve/absorption/preset_menu
