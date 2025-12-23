
#> uhc:in_game/scenario/ironman/list_1
#
# @within			uhc:in_game/scenario/ironman/list
# @within			uhc:in_game/scenario/ironman/list_1
#
# @description		Obtention de la liste des joueurs Ironman avec /trigger uhc.ironman.list set 1
#

scoreboard players add #team uhc.id.team 1
execute if score #anonyme_team uhc.data.setup matches 0 if entity @p[scores={uhc.player.ironman.list=0},predicate=uhc:id_team] run tellraw @s [{"selector":"@a[scores={uhc.player.ironman.list=0},predicate=uhc:id_team]"}]
execute if score #anonyme_team uhc.data.setup matches 1 if entity @p[scores={uhc.player.ironman.list=0},predicate=uhc:id_team] run tellraw @s [{"selector":"@a[scores={uhc.player.ironman.list=0}]"}]

execute if score #anonyme_team uhc.data.setup matches 0 as @a[scores={uhc.player.ironman.list=0},predicate=uhc:id_team] run scoreboard players reset @s uhc.player.ironman.list
execute if score #anonyme_team uhc.data.setup matches 1 as @a run return run scoreboard players reset @s uhc.player.ironman.list

execute if entity @p[scores={uhc.player.ironman.list=0}] run function uhc:in_game/scenario/ironman/list_1
