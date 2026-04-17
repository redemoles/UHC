
#> uhc:pre_game/menu/selection/settings/pvp/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/selection/settings/pvp/version_pvp
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute if score @s uhc.menu.settings.pvp matches 2 unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run return run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run return run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu
