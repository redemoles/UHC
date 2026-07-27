
#> uhc:pre_game/menu/load/settings/border/shrink_height
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#



execute unless score @s uhc.menu.settings.border matches 40..49 run return run function uhc:translation/menu/load/settings/border_main_height_limit with storage uhc:settings menu.shrink

function uhc:translation/menu/load/settings/border_height_limit_main with storage uhc:settings menu.shrink
