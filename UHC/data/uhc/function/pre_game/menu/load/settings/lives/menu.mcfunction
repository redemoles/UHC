
#> uhc:pre_game/menu/load/settings/lives/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.lives matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/lives/1_life_left/macro_set
execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/load/settings/lives/1_life_left/macro_text with storage uhc:settings menu

execute if score @s uhc.menu.settings.lives matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/lives/2_lives_left/macro_set
execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/load/settings/lives/2_lives_left/macro_text with storage uhc:settings menu
