
#> uhc:pre_game/menu/selection/gamemode/bhc/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score @s uhc.menu.gamemode.bhc matches 51.. run return run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/main
execute if score @s uhc.menu.gamemode.bhc matches 11..50 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/main

execute if score @s uhc.menu.gamemode.bhc matches 1..11 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"bhc_scenario"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/preset_menu
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1..11 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1..11 unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/main
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1..11 unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"bhc_display_grid"}] run return run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/enable

execute if score @s uhc.menu.gamemode.bhc matches 1 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/01
execute if score @s uhc.menu.gamemode.bhc matches 1 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/02
execute if score @s uhc.menu.gamemode.bhc matches 2 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/51
execute if score @s uhc.menu.gamemode.bhc matches 3 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/00
execute if score @s uhc.menu.gamemode.bhc matches 3 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/99
execute if score @s uhc.menu.gamemode.bhc matches 3 unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/91
execute if score @s uhc.menu.gamemode.bhc matches 3 unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/selection/gamemode/bhc/scenario/92

execute if score @s uhc.menu.gamemode.bhc matches 1..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"menu_bhc"}] run scoreboard players set @s uhc.menu.gamemode.bhc 1
execute if score @s uhc.menu.gamemode.bhc matches 1..9 unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"menu_bhc"}] run scoreboard players set @s uhc.menu.gamemode.bhc 2
execute if score @s uhc.menu.gamemode.bhc matches 1..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"menu_bhc"}] run scoreboard players set @s uhc.menu.gamemode.bhc 3

execute if score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1..11 unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"disable"}] run function uhc:pre_game/menu/selection/gamemode/bhc/disable

execute unless score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/gamemode/main
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.menu.gamemode.bhc matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu

execute if score @s uhc.menu.gamemode.bhc matches 1.. run function uhc:pre_game/menu/load/gamemode/bhc/main
