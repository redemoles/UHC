
#> uhc:in_game/scenario/best_pve/list
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Obtention de la liste Best PvE avec /trigger uhc.best_pve.list set 1
#

scoreboard players set #team uhc.id.team 0
tag @a[tag=uhc.player] add uhc.best_pve.list

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true}]

function uhc:in_game/scenario/best_pve/list_1
scoreboard players reset @s uhc.best_pve.list
scoreboard players enable @s uhc.best_pve.list
