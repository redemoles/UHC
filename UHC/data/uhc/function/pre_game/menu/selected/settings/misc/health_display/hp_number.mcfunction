
#> uhc:pre_game/menu/selected/settings/misc/health_display/hp_number
#
# @within			uhc:pre_game/menu/selected/settings/misc/health_display/main
#
#
# @description		Menu
#

scoreboard players add #hp_100 uhc.data.setup 1
execute if score #hp_100 uhc.data.setup matches 2 run scoreboard players set #hp_100 uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu
