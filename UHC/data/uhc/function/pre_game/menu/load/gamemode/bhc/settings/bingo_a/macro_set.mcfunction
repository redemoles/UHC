
#> uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.stepa.start int 1 run scoreboard players get #stepa_start bhc.data.setup
execute store result storage uhc:settings menu.stepa.end int 1 run scoreboard players get #stepa_end bhc.data.setup
