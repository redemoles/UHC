
#> uhc:pre_game/menu/selection/settings/player
#
# @within			uhc:pre_game/menu/detector/mainplayer
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/selection/settings/pvp_fight_stuff/player
execute if score @s uhc.menu.settings.pvp matches 21..30 run function uhc:pre_game/menu/selection/settings/pvp_team_stuff/player
execute if score @s uhc.menu.settings.pvp matches 31..40 run function uhc:pre_game/menu/selection/settings/pvp_potion/player

execute if score @s uhc.menu.settings.pvp matches 11.. run return fail

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/load/settings/lives/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/load/settings/pve/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/load/settings/inventory/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"settings_team"}] run return run function uhc:pre_game/menu/load/settings/team/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/load/settings/misc/preset_menu
execute if score @s uhc.menu.settings.inventory matches 1.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"gamemode_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/gamemode/
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"scenario_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/scenario/

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/main
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
