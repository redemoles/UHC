
#> bhc:scenario/02/bingo_stepb/end
#
# @within			bhc:scenario/02/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape B
#

# Désactivation du Bingo
scoreboard players set #bingo_2b_enabled bhc.data 0
scoreboard players set #stepb_enabled bhc.data 0
scoreboard players set #stepb_end bhc.data.temp 0

function uhc:translation/bhc/02_viking_era/bingo_b_end

# Scoreboard d'affichage
function bhc:summary/bingos/score
