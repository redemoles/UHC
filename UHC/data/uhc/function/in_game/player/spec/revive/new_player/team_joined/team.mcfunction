
#> uhc:in_game/player/spec/revive/new_player/team_joined/team
#
# @within			uhc:in_game/player/spec/revive/new_player/team_joined/player
#
#
# @description		Un nouveau joueur rejoint une nouvelle équipe
#

## Ironman
execute if score #minutes uhc.data.temp matches ..14 if score @s uhc.scenario.ironman matches 1.. run scoreboard players add @s uhc.scenario.ironman 1
execute if score #minutes uhc.data.temp matches ..14 if score #temp uhc.data.setup matches 0 if score #player uhc.scenario.ironman matches 2.. run scoreboard players add @s uhc.scenario.ironman 1

## Joueur
# Point d'apparition
scoreboard players operation @a[predicate=uhc:id/team] uhc.id.spawn = @s uhc.id.spawn
# Compté dans l'équipe
scoreboard players add @s uhc.team.size 1
