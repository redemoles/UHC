
#> uhc:translation/menu/load/scenario/pages_2_root
#
# @within			uhc:pre_game/menu/load/scenario/pages_2
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run function uhc:translation/menu/load/scenario/pages_2_fra with storage uhc:temp scenario

## ENG - English
execute if score @s uhc.player.lang matches 051407 run function uhc:translation/menu/load/scenario/pages_2_eng with storage uhc:temp scenario
