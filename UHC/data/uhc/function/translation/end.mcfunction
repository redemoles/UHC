
#> uhc:translation/end
#
# @within			uhc:end
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nForcer la fin de la partie ?\n","color":"#FFFFFF","click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"[","color":"#F7F7F7"},{"text":"Valider","color":"#3F9FFF"},{"text":"]","color":"#F7F7F7"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nForce the end of the game?\n","color":"#FFFFFF","click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"[","color":"#F7F7F7"},{"text":"Confirm","color":"#3F9FFF"},{"text":"]","color":"#F7F7F7"}]
