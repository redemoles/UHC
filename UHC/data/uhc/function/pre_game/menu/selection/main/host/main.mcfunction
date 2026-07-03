
#> uhc:pre_game/menu/selection/main/host/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"menu_world_generation"}] run return run function uhc:pre_game/menu/load/world_generation/
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"menu_world_check"}] run return run function uhc:pre_game/menu/load/world_check/
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"menu_lobby"}] run return run function uhc:pre_game/menu/load/lobby/main
execute if score #vanilla uhc.gamemode matches 1 unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"menu_gamemodes"}] run return run function uhc:pre_game/menu/load/gamemode/main
execute if score #bhc uhc.gamemode matches 1 unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"menu_gamemodes"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/main
execute if score #mls uhc.gamemode matches 1 unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"menu_gamemodes"}] run return run function uhc:pre_game/menu/load/gamemode/mls/main
execute if score #nzl uhc.gamemode matches 1 unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"menu_gamemodes"}] run return run function uhc:pre_game/menu/load/gamemode/nzl/main
execute unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"menu_scenario"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"menu_settings"}] run return run function uhc:pre_game/menu/load/settings/menu
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"menu_language"}] run return run function uhc:pre_game/menu/load/language/menu
execute unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"menu_start"}] run return run function uhc:pre_game/menu/load/start/menu
execute unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"rules_summary"}] run function uhc:pre_game/menu/selection/main/host/config
execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"menu_player"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if entity @s run function uhc:pre_game/menu/load/main/host/menu
