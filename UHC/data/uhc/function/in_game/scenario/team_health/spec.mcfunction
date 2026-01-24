
#> uhc:in_game/scenario/team_health/spec
#
# @within			uhc:in_game/player/tick
#
#
# @description		Mise à jour des points de vie de l'équipe
#

## Actualisation des points de vie d'équipe
scoreboard players operation #health uhc.scenario.team_health.team = @s uhc.player.health.100
# %
scoreboard players operation @s uhc.scenario.team_health.100 = #health uhc.scenario.team_health.team
# Coeurs
scoreboard players operation #health uhc.scenario.team_health.team /= #05 uhc.data.numbers
scoreboard players operation @s uhc.scenario.team_health.team = #health uhc.scenario.team_health.team
