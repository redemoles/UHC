
#> uhc:pre_game/menu/selection/settings/pvp/fight_stuff/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/load/settings/pvp/version/apply_change
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/preset_menu
execute unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_pvp_shield"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/shield/
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_horse"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/horse/
execute if score @s uhc.menu.settings.pvp matches 13 unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"settings_pvp_wolf"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_wolf"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/

execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_pvp"}] run function uhc:pre_game/menu/load/settings/pvp/preset_menu

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
