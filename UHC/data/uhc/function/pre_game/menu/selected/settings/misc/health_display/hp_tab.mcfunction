
#> uhc:pre_game/menu/selected/settings/misc/health_display/hp_tab
#
# @within			uhc:pre_game/menu/selected/settings/misc/health_display/main
#
#
# @description		Menu
#

scoreboard players add #hp_tab uhc.data.setup 1
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard players set #hp_tab uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu

function uhc:in_game/player/misc/score_display/list
