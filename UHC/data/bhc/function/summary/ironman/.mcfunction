
#> bhc:summary/ironman/
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 12
scoreboard objectives setdisplay sidebar bhc.ironman.timer
execute in uhc:lobby as @e[type=marker,tag=UHC,distance=0..] run function bhc:timer/scoreboard/marker_name
execute if score #game_progress uhc.game_progress matches 3.. run scoreboard players set #seconds uhc.game_progress 0
