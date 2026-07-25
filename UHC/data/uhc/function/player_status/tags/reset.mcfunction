
#> uhc:player_status/tags/reset
#
# @within			uhc:pre_game/player_and_team/reconnect/
#
#
# @description		Réinitialisation des tags
#

## Réinitialisation tags des mini-jeux du lobby
tag @s remove mgs.backroom
tag @s remove mgs.jump
tag @s remove mgs.jump.race
tag @s remove mgs.jump.infinite
tag @s remove mgs.jump.speedrun
tag @s remove mgs.tc.player
tag @s remove mgs.tc.spec
tag @s remove mgs.tc.finished
tag @s remove mgs.tc.team.01
tag @s remove mgs.tc.team.02

## Scénarios
# Best PvE
tag @s remove uhc.scenario.best_pve

## Mode de jeu
function #plugin:player_status/reset_tags
