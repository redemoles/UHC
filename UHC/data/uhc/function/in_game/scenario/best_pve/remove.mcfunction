
#> uhc:in_game/scenario/best_pve/remove
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Retrait de la liste PvE
#

tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@s"},{"text":" a quitté la liste.","color":"#FF3F3F"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@s"},{"text":" left the list.","color":"#FF3F3F"}]

tag @s remove uhc.scenario.best_pve
