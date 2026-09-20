
#> bhc:in_game/timer/scoreboard/more_than_15_teams/period/late_game
#
# @within			bhc:in_game/timer/scoreboard/more_than_15_teams/in_game
#
#
# @description		Scoreboard après les 2 bingos si plus de 15 équipes en jeu
#

execute if score #seconds uhc.data.temp matches 00..14 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 15..29 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 30..44 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 45..59 run scoreboard players set #sb bhc.data.temp 13

execute if score #seconds uhc.data.temp matches 00..14 run scoreboard objectives setdisplay sidebar bhc.bingo.score.sb1
execute if score #seconds uhc.data.temp matches 15..29 run scoreboard objectives setdisplay sidebar bhc.bingo.score.sb2
execute if score #seconds uhc.data.temp matches 30..44 run scoreboard objectives setdisplay sidebar bhc.bingo.score.sb1
execute if score #seconds uhc.data.temp matches 45..59 run scoreboard objectives setdisplay sidebar bhc.bingo.score.sb2

execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/timer/scoreboard/marker_name
