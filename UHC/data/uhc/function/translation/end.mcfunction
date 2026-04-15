
#> uhc:translation/end
#
# @within			uhc:end
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nForcer la fin de la partie ?","color":"#FF3F3F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nVALIDER\n","color":"#CF3F3F"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nForce the end of the game?","color":"#FF3F3F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nCONFIRM\n","color":"#CF3F3F"}]
