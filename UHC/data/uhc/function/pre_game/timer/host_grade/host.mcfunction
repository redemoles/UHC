
#> uhc:pre_game/timer/host_grade/menu_host
#
# @within			uhc:pre_game/timer/timer/tick_player
#
#
# @description		Obtention du grade host
#

tag @s add uhc.host
team join 099.host @s[team=099]
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu es promu hôte de la partie","color":"#FFFFFF"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You're promoted host of the game","color":"#FFFFFF"}]
scoreboard players set @s uhc.player.online 0
function uhc:pre_game/menu/reset/host
scoreboard players set @s uhc.player.online 1
