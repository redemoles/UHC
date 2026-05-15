
#> uhc:pre_game/menu/selection/gamemode/bhc/settings/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu

execute if score @s uhc.menu.gamemode.bhc matches 11 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 12
execute if score @s uhc.menu.gamemode.bhc matches 11 unless score #bhc bhc.scenario matches 91 unless score #bhc bhc.scenario matches 99 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 16

execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu
execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu

execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 12
execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless score #bhc bhc.scenario matches 91 unless score #bhc bhc.scenario matches 99 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 16
