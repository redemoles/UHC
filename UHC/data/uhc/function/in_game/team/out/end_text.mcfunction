
#> uhc:in_game/team/out/end_text
#
# @within			uhc:in_game/team/out/player_log_out
#
#
# @description		Envoie une proposition à l'host de mettre fin à la partie
#

scoreboard players enable @s uhc.game_progress
execute unless score #game_progress uhc.game_progress matches 2.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nUne seule équipe en vie détectée,\nforcer la fin de la partie ?","color":"#FF5F5F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nVALIDER\n","color":"#E73F3F","bold":true}]
execute unless score #game_progress uhc.game_progress matches 2.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nnOnly one team alive detected, force the end of the game?","color":"#FF5F5F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nCONFIRM\n","color":"#E73F3F","bold":true}]
