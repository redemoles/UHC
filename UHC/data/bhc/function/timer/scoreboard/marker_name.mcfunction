
#> bhc:timer/scoreboard/marker_name
#
# @within			bhc:scores_calculator/.../rank
#
#
# @description		Boucle d'affichage des noms d'équipe
#

# Marker name
data modify storage uhc:temp input set value {sb:""}
data modify storage uhc:temp input.sb set from entity @s data.name
function bhc:timer/scoreboard/displayed/
data modify storage uhc:temp input.sb set from entity @s data.sb

# Affichage sur scoreboards
function bhc:timer/scoreboard/marker_score with storage uhc:temp input
execute if score #team/2 bhc.data matches 8.. run function bhc:timer/scoreboard/more_than_15_teams/marker_score with storage uhc:temp input

# Fin de partie → Vérification du meilleur score
execute if score #game_progress uhc.game_progress matches 2 run function bhc:scores_calculator/endgame/max with storage uhc:temp input
