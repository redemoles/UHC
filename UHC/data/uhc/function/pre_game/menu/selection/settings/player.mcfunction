
#> uhc:pre_game/menu/selection/settings/player
#
# @within			uhc:pre_game/menu/detector/player
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/selection/settings/pvp_fight_stuff/player
execute if score @s uhc.menu.settings.pvp matches 21..30 run function uhc:pre_game/menu/selection/settings/pvp_team_stuff/player
execute if score @s uhc.menu.settings.pvp matches 31..40 run function uhc:pre_game/menu/selection/settings/pvp_potion/player

execute if score @s uhc.menu.settings.pvp matches 11.. run return fail

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.1 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/load/settings/lives/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.2 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/load/settings/pve/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.13 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/load/settings/inventory/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.6 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/load/settings/misc/
execute unless items entity @s[scores={uhc.menu.settings.inventory=1..}] inventory.24 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.19 *[minecraft:custom_data={Tags:"gamemode_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/gamemode/
execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.20 *[minecraft:custom_data={Tags:"scenario_list"}] run return run function uhc:pre_game/menu/load/settings/player_menu/scenario/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
