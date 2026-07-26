
#> uhc:pre_game/menu/selected/settings/misc/health_display/hp_name
#
# @within			uhc:pre_game/menu/selected/settings/misc/health_display/main
#
#
# @description		Menu
#

scoreboard players add #hp_name uhc.data.setup 1
execute if score #hp_name uhc.data.setup matches 2 run scoreboard players set #hp_name uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu

function uhc:in_game/player/misc/score_display/below_name
