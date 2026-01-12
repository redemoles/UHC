
#> bhc:scoreboard/stepa/personal
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 3
scoreboard objectives setdisplay sidebar bhc.stepa.score.personal
execute if score #sb uhc.game_progress matches 3 run scoreboard players set #seconds uhc.game_progress 0
