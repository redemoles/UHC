
#> uhc:translation/lobby/tc_specroom_joined
#
# @within			lobby:mini_games/tc/spectators_room/when_joined
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Clique ici pour ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set 1"}},{"text":"entrer","color":"#3FE7FF"},{"text":" dans la chambre\n"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Click here to ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set 1"}},{"text":"enter","color":"#3FE7FF"},{"text":" the chamber\n"}]
