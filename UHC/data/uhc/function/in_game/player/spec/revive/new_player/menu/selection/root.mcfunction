
#> uhc:in_game/player/spec/revive/new_player/menu/selection/root
#
# @within			uhc:in_game/player/spec/revive/new_player/start_summon_process
#
#
# @description		Resurrection d'un spectateur
#

execute if score @s uhc.menu.main.player matches 1.. in uhc:lobby run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/root
execute if score @s uhc.menu.language matches 1.. run function uhc:pre_game/menu/selection/language/main
