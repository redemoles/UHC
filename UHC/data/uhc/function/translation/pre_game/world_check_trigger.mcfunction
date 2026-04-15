
#> uhc:pre_game/world_check_trigger
#
# @within			uhc:pre_game/world_check/spawns_2
#
#
# @description		Vérification des points de spawns des équipes
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run function uhc:pre_game/world_check/text_trigger/fra

## ENG - English
execute if score @s uhc.player.lang matches 051407 run function uhc:pre_game/world_check/text_trigger/eng
