
#> uhc:in_game/scenario/best_pve/list
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Obtention de la liste Best PvE avec /trigger uhc.best_pve.list set 1
#

scoreboard players set #team uhc.id.team 0
tag @a[tag=uhc.player] add uhc.best_pve.list

function uhc:translation/in_game/scenario/best_pve_list

function uhc:in_game/scenario/best_pve/list_1
scoreboard players reset @s uhc.best_pve.list
scoreboard players enable @s uhc.best_pve.list
