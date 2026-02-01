
#> uhc:pre_game/menu/load/settings/border/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 10..19 in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_0/macro_set
execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 10..19 run return run function uhc:pre_game/menu/load/settings/border/border_0/macro_text with storage uhc:settings menu.shrink

execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 20..29 in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_1/macro_set
execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 20..29 run return run function uhc:pre_game/menu/load/settings/border/border_1/macro_text with storage uhc:settings menu.shrink

execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 30..39 in uhc:lobby run function uhc:pre_game/menu/load/settings/border/border_2/macro_set
execute if score @s uhc.menu.settings.border matches 1.. if score @s uhc.menu.settings.border matches 30..39 run return run function uhc:pre_game/menu/load/settings/border/border_2/macro_text with storage uhc:settings menu.shrink
