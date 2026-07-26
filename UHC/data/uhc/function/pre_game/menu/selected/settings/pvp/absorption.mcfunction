
#> uhc:pre_game/menu/selected/settings/pvp/no_clean
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/selected/settings/pvp/version_pvp
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_pvp_absorption"}] run return run function uhc:pre_game/menu/selected/settings/pvp/preset_menu

execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/selected/settings/pvp/preset_menu

execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1

execute if score @s uhc.menu.settings matches 1.. unless items entity @s[tag=uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s[tag=!uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
