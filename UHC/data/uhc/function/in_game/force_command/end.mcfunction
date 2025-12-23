
#> uhc:in_game/force_command/end
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Commandes in-game en tick
#

scoreboard players add #game_progress uhc.game_progress 1
function uhc:in_game/endgame
scoreboard players set @p[scores={uhc.game_progress=1}] uhc.game_progress 0
