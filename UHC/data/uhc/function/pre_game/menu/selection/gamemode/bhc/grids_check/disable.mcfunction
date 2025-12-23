
#> uhc:pre_game/menu/selection/gamemode/bhc/grids_check/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

execute if score #bhc bhc.scenario matches 00 run function uhc:pre_game/menu/load/gamemode/bhc/grids_check/00/disable
execute if score #bhc bhc.scenario matches 01 run function uhc:pre_game/menu/load/gamemode/bhc/grids_check/01/disable
execute if score #bhc bhc.scenario matches 02 run function uhc:pre_game/menu/load/gamemode/bhc/grids_check/02/disable
execute if score #bhc bhc.scenario matches 91 run function uhc:pre_game/menu/load/gamemode/bhc/grids_check/91/disable
execute if score #bhc bhc.scenario matches 99 run function uhc:pre_game/menu/load/gamemode/bhc/grids_check/99/disable

scoreboard players set @s uhc.menu.gamemode.bhc 1
function uhc:pre_game/menu/load/gamemode/bhc/main
