
#> uhc:in_game/scenario/best_pve/remove
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Retrait de la liste PvE
#

tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s"},{"text":" a quitté la liste Best PvE.","color":"#FF3F3F"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s"},{"text":" left the Best PvE list.","color":"#FF3F3F"}]

tag @s remove uhc.scenario.best_pve
