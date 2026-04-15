
#> uhc:in_game/scenario/ironman/remove_team
#
# @within			uhc:in_game/scenario/ironman/remove
#
#
# @description		Vérifie si l'équipe possède un Ironman
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

scoreboard players remove @s uhc.scenario.ironman 1
execute if score @s uhc.scenario.ironman matches 1.. run return fail

scoreboard players set @s uhc.scenario.ironman -1
scoreboard players remove #team uhc.scenario.ironman 1
function uhc:translation/in_game/scenario/ironman_remove_team

execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/death/ironman/remove
