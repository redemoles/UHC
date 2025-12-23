
#> uhc:pre_game/menu/load/settings/border/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_0/macro_set
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/load/settings/border/border_0/macro_text with storage uhc:settings

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_1/macro_set
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/load/settings/border/border_1/macro_text with storage uhc:settings

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_2/macro_set
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/load/settings/border/border_2/macro_text with storage uhc:settings

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/dynamic/macro_set
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/load/settings/border/dynamic/macro_text with storage uhc:settings
