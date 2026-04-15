
#> uhc:translation/hotbar/lobby_main
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Affichage Hotbar Ère Viking
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run function uhc:pre_game/timer/hotbar/fra_root

## ENG - English
execute if score @s uhc.player.lang matches 051407 run function uhc:pre_game/timer/hotbar/eng_root
