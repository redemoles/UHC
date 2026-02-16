
#> bhc:timer/scoreboard/more_than_15_teams/in_game
#
# @within			bhc:timer/scoreboard/more_than_15_teams/in_game
#
#
# @description		Scoreboard d'entre 2 bingos si plus de 15 équipes en jeu
#

execute if score #seconds uhc.data.temp matches 00 run scoreboard players set #sb bhc.data.temp 1
execute if score #seconds uhc.data.temp matches 15 run scoreboard players set #sb bhc.data.temp 1
execute if score #seconds uhc.data.temp matches 30 run scoreboard players set #sb bhc.data.temp 1
execute if score #seconds uhc.data.temp matches 45 run scoreboard players set #sb bhc.data.temp 1

execute if score #seconds uhc.data.temp matches 00 run scoreboard objectives setdisplay sidebar bhc.stepa.rank.score.sb1
execute if score #seconds uhc.data.temp matches 15 run scoreboard objectives setdisplay sidebar bhc.stepa.rank.score.sb2
execute if score #seconds uhc.data.temp matches 30 run scoreboard objectives setdisplay sidebar bhc.stepa.rank.score.sb1
execute if score #seconds uhc.data.temp matches 45 run scoreboard objectives setdisplay sidebar bhc.stepa.rank.score.sb2

execute unless score #seconds uhc.data.temp matches 01..14 unless score #seconds uhc.data.temp matches 16..29 unless score #seconds uhc.data.temp matches 31..44 unless score #seconds uhc.data.temp matches 46.. as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:timer/scoreboard/marker_name
