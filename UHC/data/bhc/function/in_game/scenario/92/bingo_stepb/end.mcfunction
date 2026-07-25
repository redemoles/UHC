
#> bhc:in_game/scenario/92/bingo_stepb/end
#
# @within			bhc:in_game/scenario/92/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape B
#

# Désactivation du Bingo
scoreboard players set #bingo_92b_enabled bhc.data 0
scoreboard players set #stepb_enabled bhc.data 0

function uhc:translation/bhc/92_2_grids_chill_mode/bingo_b_end

# Scoreboard d'affichage
function bhc:summary/bingos/score

# Fin de partie
execute if score #player uhc.scenario.ironman matches 2.. run function uhc:translation/bhc/91_1_grid_chill_mode/ironman
tag @a[tag=uhc.ironman] remove uhc.ironman
scoreboard players set #player uhc.scenario.ironman 0

scoreboard players add #game_progress uhc.game_progress 1
function uhc:in_game/end_game/main
