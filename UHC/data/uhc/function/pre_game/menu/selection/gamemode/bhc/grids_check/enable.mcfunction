
#> uhc:pre_game/menu/selection/gamemode/bhc/grids_check/enable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

execute if score #bhc bhc.scenario matches 00 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/00/enable
execute if score #bhc bhc.scenario matches 01 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/01/enable
execute if score #bhc bhc.scenario matches 02 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/02/enable
execute if score #bhc bhc.scenario matches 51 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/51/enable
execute if score #bhc bhc.scenario matches 91 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/91/enable
execute if score #bhc bhc.scenario matches 92 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/92/enable
execute if score #bhc bhc.scenario matches 99 run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/99/enable

execute if score #check_bingo_generated uhc.data.temp matches 1 run scoreboard players add @s uhc.menu.gamemode.bhc 50
execute if score #check_bingo_generated uhc.data.temp matches 1 run return run function uhc:pre_game/menu/load/gamemode/bhc/grids_check
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:pre_game/menu/load/gamemode/bhc/main
