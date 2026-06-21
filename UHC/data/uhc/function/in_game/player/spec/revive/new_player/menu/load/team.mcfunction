
#> uhc:in_game/player/spec/revive/new_player/menu/load/team
#
# @within			uhc:in_game/player/spec/revive/new_player/start_summon_process
#
#
# @description		Resurrection d'un spectateur
#

clear @s
execute unless score @s uhc.menu.main.player matches 1.. run scoreboard players set @s uhc.menu.main.player 1
scoreboard players set @s uhc.menu.language 0

function uhc:pre_game/menu/load/main/player/team/chosen/main

function uhc:translation/menu/load/team/page/all_in_game
