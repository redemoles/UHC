
#> uhc:summary/scoreboard/damage_taken_pve
#
# @within			
#
#
# @description		Scoreboard des dégâts pris PvE
#

execute if score #game_progress uhc.game_progress matches 2.. run scoreboard objectives setdisplay sidebar uhc.player.damage_taken.pve
