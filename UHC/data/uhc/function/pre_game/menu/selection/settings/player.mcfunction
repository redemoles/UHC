
#> uhc:pre_game/menu/selection/settings/player
#
# @within			uhc:pre_game/menu/detector/mainplayer
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.misc matches 11..20 run return run function uhc:pre_game/menu/selection/settings/misc/team_stuff/main
execute if score @s uhc.menu.settings.misc matches 21..30 run return run function uhc:pre_game/menu/selection/settings/misc/health_display/main

execute if score @s uhc.menu.settings.pvp matches 11..20 run return run function uhc:pre_game/menu/selection/settings/pvp/fight_stuff
execute if score @s uhc.menu.settings.pvp matches 31..40 run return run function uhc:pre_game/menu/selection/settings/pvp/potion
execute if score @s uhc.menu.settings.border matches 11.. run return run function uhc:pre_game/menu/selection/settings/border/shrink/main

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_team"}] run return run function uhc:pre_game/menu/selection/settings/team/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/selection/settings/lives/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/selection/settings/pvp/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selection/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 1..10 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_1/preset_menu
execute if score @s uhc.menu.settings.border matches 1..10 unless score #shrink_dynamic uhc.data.setup matches 1 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_2/preset_menu
execute if score @s uhc.menu.settings.border matches 1..10 unless score #shrink_dynamic uhc.data.setup matches 1..2 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_3/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/selection/settings/inventory/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selection/settings/misc/preset_menu
execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/selection/settings/pve/preset_menu
execute if score @s uhc.menu.settings.misc matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_misc_health_display"}] run function uhc:pre_game/menu/selection/settings/misc/health_display/preset_menu
execute if score @s uhc.menu.settings.misc matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_misc_team_stuff"}] run function uhc:pre_game/menu/selection/settings/misc/team_stuff/preset_menu
execute if score @s uhc.menu.settings.inventory matches 1.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"gamemode_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/gamemode/
execute if score @s uhc.menu.settings matches 1.. unless score #mystery_scenarios uhc.data.setup matches 1 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"scenario_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/scenario/

execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
