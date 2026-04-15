
#> uhc:translation/lobby/tc_game_end
#
# @within			lobby:mini_games/tc/timer/end
#
#
#
#

## FRA - Français / French
execute if entity @p[tag=mgs.tc.finished] run tellraw @s[scores={uhc.player.lang=061801}] [{"text":""},{"text":"Fin du mini-jeu !","color":"#FFFFFF"},{"text":"\nPoint gagné par "},{"selector":"@a[tag=mgs.tc.finished]"}]
execute unless entity @p[tag=mgs.tc.finished] run tellraw @s[scores={uhc.player.lang=061801}] [{"text":""},{"text":"Fin du mini-jeu !","color":"#FFFFFF"},{"text":"\nPersonne n'a gagné de point."}]
# Message pour quitter la chambre
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nClique ici pour ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set -1"}},{"text":"quitter","color":"#FF3F3F"},{"text":" la chambre\n"}]

## ENG - English
execute if entity @p[tag=mgs.tc.finished] run tellraw @s[scores={uhc.player.lang=051407}] [{"text":""},{"text":"End of the mini-game!","color":"#FFFFFF"},{"text":"\nPoint gained by "},{"selector":"@a[tag=mgs.tc.finished]"}]
execute unless entity @p[tag=mgs.tc.finished] run tellraw @s[scores={uhc.player.lang=051407}] [{"text":""},{"text":"End of the mini-game!","color":"#FFFFFF"},{"text":"\nNobody won a point."}]
# Message to leave the chamber
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nClick here to ","color":"#FFFFFF","underlined":true,"bold":true,"click_event":{"action":"run_command","command":"/trigger lobby.tc.player.click_to_join set -1"}},{"text":"leave","color":"#FF3F3F"},{"text":" the chamber\n"}]
