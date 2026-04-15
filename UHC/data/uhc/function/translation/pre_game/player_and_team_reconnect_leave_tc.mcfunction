
#> uhc:translation/pre_game/player_and_team_reconnect_leave_tc
#
# @within			uhc:pre_game/player_and_team/reconnect/leave_tc
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as déconnecté pendant un mini-jeu, tu as été retiré de la chambre.","color":"#FF3F3F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You disconnected during a mini-game, you've been removed from the chamber.","color":"#FF3F3F"}]
