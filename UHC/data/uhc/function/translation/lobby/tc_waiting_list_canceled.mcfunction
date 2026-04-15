
#> uhc:translation/lobby/tc_waiting_list_canceled
#
# @within			lobby:mini_games/tc/waiting/when_joined
#
#
#
#

## FRA - Français / French
execute if score @s[tag=!mgs.tc.player] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu dois être dans la salle des spectateurs pour rejoindre la chambre.","color":"#FF3F3F"}]

## ENG - English
execute if score @s[tag=!mgs.tc.player] uhc.player.lang matches 051407 run tellraw @s [{"text":"You need to be in the spectators room to join the chamber.","color":"#FF3F3F"}]

