
#> bhc:scenario/01/bingo_stepa/end
#
# @within			bhc:scenario/01/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_1a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/01_gold_rush/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/score
