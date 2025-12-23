
#> uhc:in_game/scenario/_advancement/player_kill_player
#
# @within			advancement #uhc:player_kill_player
#
#
# @description		Le joueur a fait un kill
#

# Best PvE
execute if score #best_pve uhc.scenario matches 1 as @s[tag=!uhc.scenario.best_pve] run function uhc:in_game/scenario/best_pve/add

advancement revoke @s only uhc:player_kill_player
