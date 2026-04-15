
#> bhc:scenario/99/bingo_stepa/end
#
# @within			bhc:scenario/99/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_99_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/99_bhc_run/bingo_end

# Scoreboard d'affichage
function bhc:summary/stepa/score
