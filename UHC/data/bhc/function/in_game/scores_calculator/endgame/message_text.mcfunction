
#> bhc:in_game/scores_calculator/endgame/message_text
#
# @within			bhc:in_game/scores_calculator/endgame/detect
#
#
# @description		Fin de partie
#

execute if score #bhc bhc.scenario matches 00 run return run function uhc:translation/bhc/00_vanilla/end_game
execute if score #bhc bhc.scenario matches 01 run return run function uhc:translation/bhc/01_gold_rush/end_game
execute if score #bhc bhc.scenario matches 02 run return run function uhc:translation/bhc/02_viking_era/end_game
execute if score #bhc bhc.scenario matches 51 run return run function uhc:translation/bhc/51_april_fool_26/end_game
execute if score #bhc bhc.scenario matches 91 run return run function uhc:translation/bhc/91_1_grid_chill_mode/end_game
execute if score #bhc bhc.scenario matches 92 run return run function uhc:translation/bhc/92_2_grids_chill_mode/end_game
execute if score #bhc bhc.scenario matches 99 run return run function uhc:translation/bhc/99_bhc_run/end_game
