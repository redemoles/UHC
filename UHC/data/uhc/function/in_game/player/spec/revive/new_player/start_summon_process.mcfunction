
#> uhc:in_game/player/spec/revive/new_player/start_summon_process
#
# @within			uhc:in_game/player/spec/revive/main
#
#
# @description		Resurrection d'un spectateur
#

## Téléportation au lobby
execute in uhc:lobby run tp @s 0 65 0 0 0
gamemode adventure @s
function uhc:player_status/attributes_and_effects/lobby/default

## Menu
function uhc:in_game/player/spec/revive/new_player/menu/load/team
advancement revoke @s only uhc:inventory_menu
tag @s add uhc.revive.temp
