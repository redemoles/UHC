
#> uhc:pre_game/menu/load/settings/pve/hp_chat/preset_menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players add #hp_chat uhc.data.setup 1
execute if score #hp_chat uhc.data.setup matches 2 run scoreboard players set #hp_chat uhc.data.setup 0

function uhc:pre_game/menu/load/settings/menu

execute if score #hp_chat uhc.data.setup matches 1 run scoreboard players add #hp_100 uhc.data.setup 1
execute if score #hp_chat uhc.data.setup matches 0 run scoreboard players remove #hp_100 uhc.data.setup 1
