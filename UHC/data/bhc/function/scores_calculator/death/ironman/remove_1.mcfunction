
#> bhc:scores_calculator/death/ironman/remove_1
#
# @within			bhc:scores_calculator/death/ironman/remove
#
#
# @description		Retrait de la liste Ironman
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Messages
execute unless score #bhc bhc.scenario matches 91 run function uhc:translation/bhc/scores_death_ironman_remove

scoreboard players add #score bhc.ironman.score.inv 2
function bhc:scores_calculator/death/ironman/bonus
