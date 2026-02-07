
#> bhc:summary/stepb/personal
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 6
scoreboard objectives setdisplay sidebar bhc.stepb.score.personal
execute if score #game_progress uhc.game_progress matches 3.. run scoreboard players set #seconds uhc.game_progress 0
