
#> bhc:scores_calculator/total/rank
#
# @within			bhc:scores_calculator/endgame/detect
#
#
# @description		Attribution aux joueurs de leurs données d'équipe
#

## Égalités
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/total/equality_rules
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/total/equality_rank

## Classement
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/total/rank_1
