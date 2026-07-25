
#> bhc:test/scores/
#
# @within			
#
#
# @description		Simulation d'une partie
#

## Ajout d'équipes
execute in uhc:lobby run function bhc:test/scores/team

## Ajout de points pour toutes les équipes
# Mémorise l'équipe de base du testeur
scoreboard players operation #team_original uhc.id.team = @s uhc.id.team

# Points pour toutes les équipes
scoreboard players set @s uhc.id.team 1
function bhc:test/scores/advancement

# Attribution de l'équipe de base du testeur
scoreboard players operation @s uhc.id.team = #team_original uhc.id.team

## Affichage fin d'étape
function bhc:in_game/scenario/01/bingo_stepa/end
