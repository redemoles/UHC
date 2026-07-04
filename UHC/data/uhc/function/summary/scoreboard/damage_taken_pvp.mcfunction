
#> uhc:summary/scoreboard/damage_taken_pvp
#
# @within			
#
#
# @description		Scoreboard des dégâts pris PvP
#

execute if score #game_progress uhc.game_progress matches 2.. run scoreboard objectives setdisplay sidebar uhc.player.damage_taken.pvp

scoreboard players set #seconds uhc.game_progress -270
