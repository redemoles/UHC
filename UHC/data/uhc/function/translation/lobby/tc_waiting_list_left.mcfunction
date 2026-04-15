
#> uhc:translation/lobby/tc_waiting_list_left
#
# @within			lobby:mini_games/tc/waiting/when_left
#
#
#
#

## FRA - Français / French
execute if score @s[tag=mgs.tc.spec] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as quitté la liste d'attente.","color":"#FF3F3F"}]
execute if score @s[tag=!mgs.tc.spec] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as quitté la chambre.","color":"#FF3F3F"}]

## ENG - English
execute if score @s[tag=mgs.tc.spec] uhc.player.lang matches 051407 run tellraw @s [{"text":"You left the waiting list.","color":"#FF3F3F"}]
execute if score @s[tag=!mgs.tc.spec] uhc.player.lang matches 051407 run tellraw @s [{"text":"You left the chamber.","color":"#FF3F3F"}]
