
#> bhc:scenario/51/bingo_stepb/end
#
# @within			bhc:scenario/51/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape B
#

# Désactivation du Bingo
scoreboard players set #bingo_51b_enabled bhc.data 0
scoreboard players set #stepb_enabled bhc.data 0

function uhc:translation/bhc/51_april_fool_26/bingo_b_end

# Scoreboard d'affichage
function bhc:summary/bingos/score
