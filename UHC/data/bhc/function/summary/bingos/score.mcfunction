
#> bhc:summary/bingos/score
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 13
scoreboard objectives setdisplay sidebar bhc.bingo.score
execute in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:timer/scoreboard/marker_name
execute if score #game_progress uhc.game_progress matches 3.. run scoreboard players set #seconds uhc.game_progress -270
