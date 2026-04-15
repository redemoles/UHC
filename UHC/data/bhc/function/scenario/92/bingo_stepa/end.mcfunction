
#> bhc:scenario/92/bingo_stepa/end
#
# @within			bhc:scenario/92/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_92a_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

function uhc:translation/bhc/92_2_grids_chill_mode/bingo_a_end

# Scoreboard d'affichage
function bhc:summary/stepa/score
