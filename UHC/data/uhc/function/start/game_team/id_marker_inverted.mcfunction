
#> uhc:start/game_team/id_marker_inverted
#
# @within			uhc:start/game_team/
#
#
# @description		Création des équipes
#

# Id d'équipe des markers
scoreboard players operation @s uhc.id.team.inverted = #temp uhc.id.team.inverted
scoreboard players remove #temp uhc.id.team.inverted 1
