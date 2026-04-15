
#> uhc:translation/lobby/tc_waiting_list_added
#
# @within			lobby:mini_games/tc/waiting/when_joined
#
#
#
#

## FRA - Français / French
execute if score @s[tag=!mgs.tc.player] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu es dans la liste d'attente pour rejoindre la chambre.","color":"#3FE7FF"}]
execute if score @s[tag=mgs.tc.player] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu es déjà dans la liste d'attente pour jouer.","color":"#FF3F3F"}]
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Clique ici pour ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set -1"}},{"text":"quitter","color":"#FF3F3F"},{"text":" la liste d'attente ou la chambre\n"}]

## ENG - English
execute if score @s[tag=!mgs.tc.player] uhc.player.lang matches 051407 run tellraw @s [{"text":"You're in the waiting list to join the chamber.","color":"#3FE7FF"}]
execute if score @s[tag=mgs.tc.player] uhc.player.lang matches 051407 run tellraw @s [{"text":"You're already on the waiting list to play.","color":"#FF3F3F"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Click here to ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set -1"}},{"text":"leave","color":"#FF3F3F"},{"text":" the waiting list or the chamber\n"}]
