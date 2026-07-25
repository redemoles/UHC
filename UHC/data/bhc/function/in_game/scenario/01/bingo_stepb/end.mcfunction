
#> bhc:in_game/scenario/01/bingo_stepb/end
#
# @within			bhc:in_game/scenario/01/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape B
#

# Désactivation du Bingo
scoreboard players set #bingo_1b_enabled bhc.data 0
scoreboard players set #stepb_enabled bhc.data 0

function uhc:translation/bhc/01_gold_rush/bingo_b_end

# Scoreboard d'affichage
function bhc:summary/bingos/score
