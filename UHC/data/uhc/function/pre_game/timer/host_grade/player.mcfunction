
#> uhc:pre_game/timer/host_grade/player
#
# @within			uhc:pre_game/timer/timer/tick_player
#
#
# @description		Perte du grade host
#

tag @s remove uhc.host
team join 099 @s[team=099.host]
function uhc:translation/pre_game/host_grade_downgrade
scoreboard players set @s uhc.player.online 0
function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1
