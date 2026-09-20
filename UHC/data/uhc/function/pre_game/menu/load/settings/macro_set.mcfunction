
#> uhc:pre_game/menu/load/settings/pve/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.pve int 1 run scoreboard players get #pve uhc.data.setup
execute store result storage uhc:settings menu.pvp int 1 run scoreboard players get #pvp uhc.data.setup
execute store result storage uhc:settings menu.shrink.1_size_start int 1 run scoreboard players get #shrink_1_size_start uhc.data.setup
