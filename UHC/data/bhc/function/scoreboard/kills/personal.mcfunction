
#> bhc:scoreboard/kills/personal
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 9
scoreboard objectives setdisplay sidebar uhc.player.kills
execute if score #sb uhc.game_progress matches 3 run scoreboard players set #seconds uhc.game_progress 0
