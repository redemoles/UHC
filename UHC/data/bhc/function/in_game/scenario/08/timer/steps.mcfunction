
#> bhc:in_game/scenario/08/timer/steps
#
# @within			bhc:in_game/timer/minute
#
#
# @description		Fonction par minute
#

## Timer interne
# Bingo Classique
execute if score #stepa_start bhc.data.temp matches 0 run function bhc:in_game/scenario/08/bingo_stepa/start
execute if score #stepa_end bhc.data.temp matches 0 run function bhc:in_game/scenario/08/bingo_stepa/end

# Bingo Spécial
execute if score #stepb_start bhc.data.temp matches 0 run function bhc:in_game/scenario/08/bingo_stepb/start
execute if score #stepb_end bhc.data.temp matches 0 run function bhc:in_game/scenario/08/bingo_stepb/end
