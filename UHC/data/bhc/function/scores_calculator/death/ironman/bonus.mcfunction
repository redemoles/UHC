
#> bhc:scores_calculator/death/ironman/bonus
#
# @within			bhc:scores_calculator/death/update
# 
#
# @description		Actualisation scores ironman 
#

# Temps Ironman à l'équipe
function bhc:scores_calculator/death/ironman/scores

# Temps Ironman aux équipes ayant encore un Ironman
scoreboard players add #tick bhc.data.temp 1
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.scenario.ironman=1..}] run function bhc:scores_calculator/death/ironman/scores
scoreboard players remove #tick bhc.data.temp 1

# Rangs
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/ironman/rank
