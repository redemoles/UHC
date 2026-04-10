
#> uhc:in_game/player/spec/revive/new_player/cancel
#
# @within			uhc:in_game/player/spec/revive/new_player/tick
#
#
# @description		Resurrection d'un spectateur
#

scoreboard players set @s uhc.player.online 0
scoreboard players set @s uhc.menu.revive 0
tag @s remove uhc.revive.temp
function uhc:in_game/player/spec/new_player
