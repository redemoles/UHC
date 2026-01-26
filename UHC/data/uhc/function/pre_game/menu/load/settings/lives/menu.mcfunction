
#> uhc:pre_game/menu/load/settings/lives/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.lives matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/lives/live_1/macro_set
execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/load/settings/lives/live_1/macro_text with storage uhc:settings menu

execute if score @s uhc.menu.settings.lives matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/lives/live_2/macro_set
execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/load/settings/lives/live_2/macro_text with storage uhc:settings menu


execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/load/settings/lives/start_in_sky/macro_text
