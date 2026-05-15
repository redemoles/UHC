
#> uhc:pre_game/menu/selection/gamemode/bhc/grids_check/main
#
# @within			uhc:pre_game/menu/selection/gamemode/bhc/main
#
#
# @description		Redirection
#

execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"bhc_display_grid"}] run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/disable
function uhc:pre_game/menu/load/gamemode/bhc/main
