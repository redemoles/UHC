
#> uhc:translation/lobby/tc_stop_kick
#
# @within			lobby:mini_games/tc/stop/kick
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"La chambre a été fermée de force par l'hôte.","color":"#FF3F3F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"The chamber has been forcibly closed by the host.","color":"#FF3F3F"}]
