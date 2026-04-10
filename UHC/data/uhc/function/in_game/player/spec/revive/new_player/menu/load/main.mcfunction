
#> uhc:in_game/player/spec/revive/new_player/menu/load/main
#
# @within			uhc:in_game/player/spec/revive/new_player/start_summon_process
#
#
# @description		Resurrection d'un spectateur
#

execute if score @s uhc.menu.main.player matches 1 run return run function uhc:in_game/player/spec/revive/new_player/menu/load/team
execute if score @s uhc.menu.language matches 1.. run return run function uhc:pre_game/menu/load/language/menu
