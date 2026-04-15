
#> uhc:translation/team_out_end_text
#
# @within			uhc:in_game/team/out/end_text
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nUne seule équipe en vie détectée,\nforcer la fin de la partie ?","color":"#FF5F5F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nVALIDER\n","color":"#E73F3F","bold":true}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nnOnly one team alive detected, force the end of the game?","color":"#FF5F5F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nCONFIRM\n","color":"#E73F3F","bold":true}]
