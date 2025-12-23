
#> uhc:pre_game/menu/selection/gamemode/bhc/main
#
# @within			uhc:pre_game/menu/detector/host
#
#
# @description		Redirection
#

execute unless items entity @s[scores={uhc.menu.gamemode.bhc=09}] inventory.13 *[minecraft:custom_data={Tags:"bhc_display_grid"}] run return run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/disable
execute if score #bhc uhc.gamemode matches 1 unless items entity @s[scores={uhc.menu.gamemode.bhc=1..}] inventory.7 *[minecraft:custom_data={Tags:"bhc_display_grid"}] run return run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/enable
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=01}] inventory.10 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/load/gamemode/bhc/scenario/01
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=01}] inventory.11 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/load/gamemode/bhc/scenario/02
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=01}] inventory.14 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/load/gamemode/bhc/scenario/91
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=01}] inventory.15 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/load/gamemode/bhc/scenario/99
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=01}] inventory.16 *[minecraft:custom_data={Tags:"bhc_scenario"}] run function uhc:pre_game/menu/load/gamemode/bhc/scenario/00

execute unless items entity @s[scores={uhc.menu.gamemode.bhc=1..}] inventory.1 *[minecraft:custom_data={Tags:"bhc_scenario"}] run scoreboard players set @s uhc.menu.gamemode.bhc 01
execute if score #bhc uhc.gamemode matches 1 unless items entity @s[scores={uhc.menu.gamemode.bhc=1..}] inventory.19 *[minecraft:custom_data={Tags:"disable"}] run function uhc:pre_game/menu/load/gamemode/bhc/disable
execute unless items entity @s[scores={uhc.menu.gamemode.bhc=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/gamemode/
execute if score @s uhc.menu.gamemode.bhc matches 1.. run function uhc:pre_game/menu/load/gamemode/bhc/main
