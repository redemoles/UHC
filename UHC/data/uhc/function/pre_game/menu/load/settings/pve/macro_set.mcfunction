
#> uhc:pre_game/menu/load/settings/pve/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.lives int 1 run scoreboard players get #lives uhc.data.setup
execute store result storage uhc:settings menu.1_life_left int 1 run scoreboard players get #1_life_left uhc.data.setup
execute store result storage uhc:settings menu.2_lives_left int 1 run scoreboard players get #2_lives_left uhc.data.setup
