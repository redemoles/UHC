
#> bhc:in_game/scores_calculator/kills/player_killer
#
# @within			bhc:in_game/scores_calculator/kills/player_dead
#
#
# @description		Attribution des points au joueur 
#

## Ajout du score à l'équipe du joueur qui a fait le kill
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function bhc:in_game/scores_calculator/kills/scores
# Classement
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/kills/rank
