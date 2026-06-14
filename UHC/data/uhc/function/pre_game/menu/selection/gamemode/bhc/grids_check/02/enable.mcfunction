
#> uhc:pre_game/menu/selection/gamemode/bhc/grids_check/02/enable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

scoreboard players set #check_bingo_generated uhc.data.temp 1
execute store result score #check_bingo_generated uhc.data.temp run function bingo_generator:load
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:translation/menu/selected/gamemode_no_bingo_generated

scoreboard players set #bingo_2a_enabled bhc.data 1
scoreboard players set #bingo_2b_enabled bhc.data 1
