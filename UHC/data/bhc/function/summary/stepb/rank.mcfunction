
#> bhc:summary/stepb/rank
#
# @within			
#
#
# @description		Affichage du scoreboard
#

scoreboard players set #sb bhc.data.temp 4
scoreboard objectives setdisplay sidebar bhc.stepb.rank.score
execute in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:timer/scoreboard/marker_name
execute if score #game_progress uhc.game_progress matches 3.. run scoreboard players set #seconds uhc.game_progress 0
