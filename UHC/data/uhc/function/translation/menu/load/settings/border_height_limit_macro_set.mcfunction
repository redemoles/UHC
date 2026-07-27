
#> uhc:translation/menu/load/settings/border_height_limit_macro_set
#
# @within			uhc:pre_game/menu/load/settings/border/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run data modify storage uhc:settings menu.shrink.height_text set value "Limites Y"

## ENG - English
execute if score @s uhc.player.lang matches 051407 run data modify storage uhc:settings menu.shrink.height_text set value "Y limits"
