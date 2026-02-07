
#> uhc:end
#
# @within			
#
#
# @description		Provoquer la fin de partie, commande manuelle
#

scoreboard players enable @s uhc.game_progress
execute unless score #game_progress uhc.game_progress matches 2.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nForcer la fin de la partie ?","color":"#FF3F3F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nVALIDER\n","color":"#CF3F3F"}]
execute unless score #game_progress uhc.game_progress matches 2.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nForce the end of the game?","color":"#FF3F3F","bold":true,"click_event":{"action":"run_command","command":"/trigger uhc.game_progress add 1"}},{"text":"\nCONFIRM\n","color":"#CF3F3F"}]
execute if score #game_progress uhc.game_progress matches 2.. in uhc:lobby run function uhc:in_game/endgame
