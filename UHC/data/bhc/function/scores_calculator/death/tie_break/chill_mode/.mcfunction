
#> bhc:scores_calculator/death/tie_break/chill_mode/
#
# @within			bhc:scores_calculator/death/tie_break/score
#
#
# @description		Rang d'équipe en survie avec départage sur les dégâts PvE émis  
#

execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/tie_break/chill_mode/score
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/tie_break/chill_mode/rank
