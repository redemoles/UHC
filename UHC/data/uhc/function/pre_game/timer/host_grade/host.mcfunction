
#> uhc:pre_game/timer/host_grade/menu_host
#
# @within			uhc:pre_game/timer/timer/tick_player
#
#
# @description		Obtention du grade host
#

tag @s add uhc.host
team join 099.host @s[team=099]
function uhc:translation/pre_game/host_grade_upgrade
scoreboard players set @s uhc.player.online 0
function uhc:pre_game/menu/reset/host
scoreboard players set @s uhc.player.online 1
