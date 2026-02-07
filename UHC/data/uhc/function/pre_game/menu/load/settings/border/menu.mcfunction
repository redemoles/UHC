
#> uhc:pre_game/menu/load/settings/border/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/shrink_1/macro_set
execute unless score @s uhc.menu.settings.border matches 10..19 run function uhc:pre_game/menu/load/settings/border/shrink_1/macro_text with storage uhc:settings menu.shrink
execute if score @s uhc.menu.settings.border matches 10..19 run function uhc:pre_game/menu/load/settings/border/shrink_1/menu with storage uhc:settings menu.shrink

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/shrink_2/macro_set
execute unless score @s uhc.menu.settings.border matches 20..29 run function uhc:pre_game/menu/load/settings/border/shrink_2/macro_text with storage uhc:settings menu.shrink
execute if score @s uhc.menu.settings.border matches 20..29 run function uhc:pre_game/menu/load/settings/border/shrink_2/menu with storage uhc:settings menu.shrink

execute if score @s uhc.menu.settings.border matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/border/shrink_3/macro_set
execute unless score @s uhc.menu.settings.border matches 30..39 run function uhc:pre_game/menu/load/settings/border/shrink_3/macro_text with storage uhc:settings menu.shrink
execute if score @s uhc.menu.settings.border matches 30..39 run function uhc:pre_game/menu/load/settings/border/shrink_3/menu with storage uhc:settings menu.shrink
