
#> uhc:in_game/scenario/team_health/player
#
# @within			uhc:in_game/player/tick
#
#
# @description		Mise à jour des points de vie de l'équipe
#

## Actualisation des points de vie d'équipe
scoreboard players set #health uhc.scenario.team_health.team 0
execute as @a[predicate=uhc:id/team,gamemode=!spectator] run scoreboard players operation #health uhc.scenario.team_health.team += @s uhc.player.health.100
# %
scoreboard players operation @a[predicate=uhc:id/team] uhc.scenario.team_health.100 = #health uhc.scenario.team_health.team
# Coeurs
execute if score #hp_tab uhc.data.setup matches 2 store result score #count uhc.scenario.team_health.team if entity @a[predicate=uhc:id/team,gamemode=!spectator]
execute if score #hp_tab uhc.data.setup matches 2 run scoreboard players operation #health uhc.scenario.team_health.team /= #count uhc.scenario.team_health.team
scoreboard players operation #health uhc.scenario.team_health.team /= #05 uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id/team] uhc.scenario.team_health.team = #health uhc.scenario.team_health.team
