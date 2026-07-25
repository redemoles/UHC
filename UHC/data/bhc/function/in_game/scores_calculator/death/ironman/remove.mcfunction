
#> bhc:in_game/scores_calculator/death/ironman/remove
#
# @within			uhc:in_game/scenario/ironman/remove
#
#
# @description		Retrait de la liste Ironman
#

# Actualisation des scores d'Ironman
execute if score #team uhc.scenario.ironman matches ..0 run function bhc:in_game/scores_calculator/death/ironman/scores
execute if score #team uhc.scenario.ironman matches 1.. run function bhc:in_game/scores_calculator/death/ironman/remove_1

# Si la dernière équipe avec Ironman a plusieurs joueurs
execute if score #team uhc.scenario.ironman matches 1 if score #player uhc.scenario.ironman matches 2.. in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.scenario.ironman=1..}] run function bhc:in_game/scores_calculator/death/ironman/remove_1

# Actualisation des scores de Survie
function bhc:in_game/scores_calculator/death/update
