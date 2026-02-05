
#> uhc:in_game/scenario/best_pve/list_1
#
# @within			uhc:in_game/scenario/best_pve/list
# @within			uhc:in_game/scenario/best_pve/list_1
#
# @description		Obtention de la liste Best PvE avec /trigger uhc.best_pve.list set 1
#

scoreboard players add #team uhc.id.team 1

execute as @a[scores={uhc.scenario.best_pve.list=0},predicate=uhc:id/team] run function uhc:in_game/scenario/best_pve/list_2
execute if entity @p[scores={uhc.scenario.best_pve.list=0}] run function uhc:in_game/scenario/best_pve/list_1
