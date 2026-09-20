
#> uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.stepb.start int 1 run scoreboard players get #stepb_start bhc.data.setup
execute store result storage uhc:settings menu.stepb.end int 1 run scoreboard players get #stepb_end bhc.data.setup
execute store result storage uhc:settings menu.stepb.exhaustion int 1 run scoreboard players get #stepb_exhaustion bhc.data.setup
