
#> uhc:pre_game/menu/selected/gamemode/bhc/grids_check/main
#
# @within			uhc:pre_game/menu/selected/gamemode/bhc/main
#
#
# @description		Redirection
#

execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"bhc_display_grid"}] run function uhc:pre_game/menu/selected/gamemode/bhc/grids_check/disable
execute if score @s uhc.menu.gamemode.bhc matches 51.. run return run function uhc:pre_game/menu/load/gamemode/bhc/grids_check
function uhc:pre_game/menu/load/gamemode/bhc/main
