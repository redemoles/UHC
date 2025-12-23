
#> uhc:pre_game/menu/selection/main/host
#
# @within			uhc:pre_game/menu/detector/host
#
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.menu.main.host] inventory.1 *[minecraft:custom_data={Tags:"menu_world_generation"}] run return run function uhc:pre_game/menu/load/world_generation/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.2 *[minecraft:custom_data={Tags:"menu_world_check"}] run return run function uhc:pre_game/menu/load/world_check/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.3 *[minecraft:custom_data={Tags:"menu_lobby"}] run return run function uhc:pre_game/menu/load/lobby/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.5 *[minecraft:custom_data={Tags:"menu_gamemodes"}] run return run function uhc:pre_game/menu/load/gamemode/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.6 *[minecraft:custom_data={Tags:"menu_scenario"}] run return run function uhc:pre_game/menu/load/scenario/1
execute unless items entity @s[tag=uhc.menu.main.host] inventory.7 *[minecraft:custom_data={Tags:"menu_settings"}] run return run function uhc:pre_game/menu/load/settings/menu
execute unless items entity @s[tag=uhc.menu.main.host] inventory.19 *[minecraft:custom_data={Tags:"menu_team_settings"}] run return run function uhc:pre_game/menu/load/team_settings/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.22 *[minecraft:custom_data={Tags:"menu_start"}] run return run function uhc:pre_game/menu/load/start/
execute unless items entity @s[tag=uhc.menu.main.host] inventory.24 *[minecraft:custom_data={Tags:"rules_summary"}] run function uhc:pre_game/menu/load/main/host/config with storage uhc:settings
execute unless items entity @s[tag=uhc.menu.main.host] inventory.25 *[minecraft:custom_data={Tags:"menu_player"}] run return run function uhc:pre_game/menu/load/main/player/
execute if entity @s[tag=uhc.menu.main.host] run function uhc:pre_game/menu/load/main/host/
