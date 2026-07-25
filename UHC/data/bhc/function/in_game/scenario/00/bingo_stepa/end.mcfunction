
#> bhc:in_game/scenario/00/bingo_stepa/end
#
# @within			bhc:in_game/scenario/00/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_0a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/00_vanilla/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/rank
