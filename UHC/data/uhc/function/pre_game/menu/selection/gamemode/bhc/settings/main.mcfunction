
#> uhc:pre_game/menu/selection/gamemode/bhc/settings/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selection/gamemode/bhc/settings/1_remove
execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selection/gamemode/bhc/settings/2_remove
execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selection/gamemode/bhc/settings/3_add
execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selection/gamemode/bhc/settings/4_add

execute if score @s uhc.menu.gamemode.bhc matches 12.. unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu

execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 12
execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 13
execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 16
execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 17
execute if score #bhc bhc.scenario matches 1 if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 18

execute if score @s uhc.menu.gamemode.bhc matches 11 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 12
execute if score @s uhc.menu.gamemode.bhc matches 11 unless score #bhc bhc.scenario matches 91 unless score #bhc bhc.scenario matches 99 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 16

execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu
execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/preset_menu

execute if score @s uhc.menu.gamemode.bhc matches 16..19 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 12
execute if score @s uhc.menu.gamemode.bhc matches 12..15 unless score #bhc bhc.scenario matches 91 unless score #bhc bhc.scenario matches 99 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"bhc_settings"}] run return run scoreboard players set @s uhc.menu.gamemode.bhc 16
