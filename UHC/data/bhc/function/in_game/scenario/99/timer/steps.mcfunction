
#> bhc:in_game/scenario/99/timer/steps
#
# @within			bhc:in_game/timer/minute
#
#
# @description		Fonction par minute
#

## Timer interne
# Bingo
execute if score #stepa_start bhc.data.temp matches 0 run function bhc:in_game/scenario/99/bingo_stepa/start
execute if score #stepa_end bhc.data.temp matches 0 run function bhc:in_game/scenario/99/bingo_stepa/end

# Téléportation
execute if score #shrink_1_time_left uhc.data.temp matches 0 run function bhc:in_game/scenario/99/tp/
