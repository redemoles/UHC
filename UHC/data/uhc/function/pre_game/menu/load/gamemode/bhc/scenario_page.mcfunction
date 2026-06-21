
#> uhc:pre_game/menu/load/gamemode/bhc/scenario_page
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
# @description		Menu
#

execute if score @s uhc.menu.gamemode.bhc matches 1 run function uhc:translation/menu/load/gamemode/bhc_scenario_page_1
execute if score @s uhc.menu.gamemode.bhc matches 2 run function uhc:translation/menu/load/gamemode/bhc_scenario_page_2
execute if score @s uhc.menu.gamemode.bhc matches 3 run function uhc:translation/menu/load/gamemode/bhc_scenario_page_3
function uhc:translation/menu/load/gamemode/bhc_scenario_main
