
#> uhc:in_game/scenario/_advancement/kill_bat
#
# @within			advancement #uhc:kill_bat
#
#
# @description		Le joueur a fait un kill
#

# Bats
execute if score #bats uhc.scenario matches 1 in uhc:lobby run function uhc:in_game/scenario/bats/tick

advancement revoke @s only uhc:kill_bat
