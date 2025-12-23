
#> uhc:in_game/scenario/_advancement/player_kill_player
#
# @within			advancement #uhc:player_kill_player
#
#
# @description		Le joueur a fait un kill
#

# Bats
execute if score #bats uhc.scenario matches 1 run function uhc:in_game/scenario/bats/

advancement revoke @s only uhc:player_kill_bat
