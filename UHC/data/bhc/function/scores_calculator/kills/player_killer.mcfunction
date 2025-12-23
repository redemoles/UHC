
#> bhc:scores_calculator/kills/player_killer
#
# @within			bhc:scores_calculator/kills/player_dead
#
#
# @description		Attribution des points au joueur 
#

# Ajout des points
execute unless score #bhc bhc.scenario matches 02 if score #stepb_start bhc.data.temp matches ..0 unless score #stepb_end bhc.data.temp matches ..0 run scoreboard players set #points bhc.kills.score.inv 1
scoreboard players add #points bhc.kills.score.inv 1

# Ajout d'un kill à l'équipe du joueur qui a fait le kill
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute as @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] run function bhc:scores_calculator/kills/scores

## Classement
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/kills/rank
