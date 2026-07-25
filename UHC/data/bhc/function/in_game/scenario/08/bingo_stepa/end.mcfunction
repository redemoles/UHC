
#> bhc:in_game/scenario/08/bingo_stepa/end
#
# @within			bhc:in_game/scenario/08/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_8a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/08/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/rank
