
#> bhc:scenario/91/timer/steps
#
# @within			bhc:timer/minute
#
#
# @description		Fonction par minute
#

## Timer interne
# Bingo
execute if score #stepa_start bhc.data.temp matches 0 run function bhc:scenario/91/bingo_stepa/start
execute if score #stepa_end bhc.data.temp matches 0 run function bhc:scenario/91/bingo_stepa/end
