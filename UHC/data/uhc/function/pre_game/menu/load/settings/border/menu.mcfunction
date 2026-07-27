
#> uhc:pre_game/menu/load/settings/border/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute in uhc:lobby run function uhc:pre_game/menu/load/settings/border/macro_set
execute if score @s uhc.menu.settings.border matches 11.. run function uhc:translation/menu/load/settings/border_main_menu with storage uhc:settings menu.shrink

function uhc:pre_game/menu/load/settings/border/shrink_1
function uhc:pre_game/menu/load/settings/border/shrink_2
function uhc:pre_game/menu/load/settings/border/shrink_3
function uhc:pre_game/menu/load/settings/border/shrink_height
