
#> uhc:summary/scoreboard/damage_dealt_pve
#
# @within			
#
#
# @description		Scoreboard des dégâts émis PvE
#

execute if score #game_progress uhc.game_progress matches 2.. run scoreboard objectives setdisplay sidebar uhc.player.damage_dealt.pve
