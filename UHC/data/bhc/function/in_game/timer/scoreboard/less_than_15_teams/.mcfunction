
#> bhc:in_game/timer/scoreboard/less_than_15_teams/
#
# @within			bhc:in_game/timer/second
#
#
# @description		Changement de scoreboard
#

execute if score #seconds uhc.data.temp matches 00 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 15 run scoreboard players set #sb bhc.data.temp 11
execute if score #seconds uhc.data.temp matches 30 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 45 run scoreboard players set #sb bhc.data.temp 11

execute if score #seconds uhc.data.temp matches 00 run scoreboard objectives setdisplay sidebar bhc.bingo.score
execute if score #seconds uhc.data.temp matches 15 run scoreboard objectives setdisplay sidebar bhc.death.score
execute if score #seconds uhc.data.temp matches 30 run scoreboard objectives setdisplay sidebar bhc.bingo.score
execute if score #seconds uhc.data.temp matches 45 run scoreboard objectives setdisplay sidebar bhc.death.score

execute unless score #seconds uhc.data.temp matches 01..14 unless score #seconds uhc.data.temp matches 16..29 unless score #seconds uhc.data.temp matches 31..44 unless score #seconds uhc.data.temp matches 46.. as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/timer/scoreboard/marker_name
