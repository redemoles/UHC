
#> uhc:pre_game/timer/host_grade/player
#
# @within			uhc:pre_game/timer/timer/tick_player
#
#
# @description		Perte du grade host
#

tag @s remove uhc.host
team join 099 @s[team=099.host]
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu n'es plus hôte de la partie","color":"#FFFFFF"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You're no longer host of the game","color":"#FFFFFF"}]
scoreboard players set @s uhc.player.online 0
function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1
