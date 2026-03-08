
#> uhc:in_game/scenario/best_pve/add
#
# @within			uhc:in_game/scenario/_advancement/player_kill_player
#
#
# @description		Retour dans la liste Best PvE
#

# Msg
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@s"},{"text":" vient de réintégrer la liste.","color":"#FFE73F"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@s"},{"text":" has just been added back to the list.","color":"#FFE73F"}]

tag @s add uhc.scenario.best_pve
