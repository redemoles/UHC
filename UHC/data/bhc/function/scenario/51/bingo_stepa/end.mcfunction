
#> bhc:scenario/51/bingo_stepa/end
#
# @within			bhc:scenario/51/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_51a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/51_april_fool_26/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/rank
