
#> bhc:scenario/02/bingo_stepa/end
#
# @within			bhc:scenario/02/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_2a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/02_viking_era/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/score
