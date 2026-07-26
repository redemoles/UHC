
#> uhc:pre_game/menu/selected/gamemode/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score @s uhc.menu.gamemode.main matches 1 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"gamemode_bhc"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/main
execute if score @s uhc.menu.gamemode.main matches 1 run function #plugin:pre_game/menu/selected/gamemodes_main_menu/main

execute if score @s uhc.menu.gamemode.main matches 1 unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.gamemode.main matches 1 run function uhc:pre_game/menu/load/gamemode/main

execute if score #vanilla uhc.gamemode matches 1 run function uhc:translation/menu/selected/gamemode_text_main
