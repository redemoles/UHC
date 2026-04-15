
#> uhc:end
#
# @within			
#
#
# @description		Provoquer la fin de partie, commande manuelle
#

scoreboard players enable @s uhc.game_progress
execute unless score #game_progress uhc.game_progress matches 2.. run function uhc:translation/end
execute if score #game_progress uhc.game_progress matches 2.. in uhc:lobby run function uhc:in_game/endgame
