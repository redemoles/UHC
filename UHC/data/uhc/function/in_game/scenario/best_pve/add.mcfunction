
#> uhc:in_game/scenario/best_pve/add
#
# @within			uhc:in_game/scenario/_advancement/player_kill_player
#
#
# @description		Retour dans la liste Best PvE
#

# Msg FRA
tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s"},{"text":" vient de réintégrer la liste Best PvE.","color":"#FFE73F"}]

# Msg ENG
tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s"},{"text":" just reintegrate the Best PvE list.","color":"#FFE73F"}]

tag @s add uhc.scenario.best_pve
advancement revoke @s only uhc:took_damage
