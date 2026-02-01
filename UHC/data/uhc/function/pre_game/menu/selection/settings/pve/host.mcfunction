
#> uhc:pre_game/menu/selection/settings/pve/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_hp_tab"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_tab/preset_menu
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_hp_name"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_name/preset_menu
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_hp_chat"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_chat/preset_menu
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_absorption"}] run return run function uhc:pre_game/menu/load/settings/pve/absorption/preset_menu
