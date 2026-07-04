
#> uhc:summary/scoreboard/damage_dealt_pvp
#
# @within			
#
#
# @description	    Scoreboard des dégâts émis PvP
#

execute if score #game_progress uhc.game_progress matches 2.. run scoreboard objectives setdisplay sidebar uhc.player.damage_dealt.pvp

scoreboard players set #seconds uhc.game_progress -270
