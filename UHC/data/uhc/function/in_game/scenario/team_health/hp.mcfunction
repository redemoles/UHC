
#> uhc:in_game/scenario/team_health/hp
#
# @within			uhc:in_game/scenario/team_health/
#
#
# @description		Mise à jour des points de vie de l'équipe
#

execute store result storage uhc:temp hp.player int 1 run data get entity @s Health 50
execute store result score @s uhc.scenario.team_health.player run data get storage uhc:temp hp.player
scoreboard players operation @s uhc.scenario.team_health.player /= #10 uhc.data.numbers
