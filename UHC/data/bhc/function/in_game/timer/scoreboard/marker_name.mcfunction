
#> bhc:in_game/timer/scoreboard/marker_name
#
# @within			bhc:in_game/scores_calculator/.../rank
#
#
# @description		Boucle d'affichage des noms d'équipe
#

# Marker name
data modify storage uhc:temp input set value {sb:""}
data modify storage uhc:temp input.sb set from entity @s data.name
function bhc:in_game/timer/scoreboard/displayed/
data modify storage uhc:temp input.sb set from entity @s data.sb

# Affichage sur scoreboards
function bhc:in_game/timer/scoreboard/marker_score with storage uhc:temp input
execute if score #team/2 bhc.data matches 8.. run function bhc:in_game/timer/scoreboard/more_than_15_teams/marker_score with storage uhc:temp input

# Fin de partie → Vérification du meilleur score
execute if score #game_progress uhc.game_progress matches 2 run function bhc:in_game/scores_calculator/endgame/max with storage uhc:temp input
