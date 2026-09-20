
#> bhc:in_game/timer/scoreboard/less_than_15_teams/
#
# @within			bhc:in_game/timer/second
#
#
# @description		Changement de scoreboard
#

execute if score #seconds uhc.data.temp matches 00..14 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 15..29 run scoreboard players set #sb bhc.data.temp 11
execute if score #seconds uhc.data.temp matches 30..44 run scoreboard players set #sb bhc.data.temp 13
execute if score #seconds uhc.data.temp matches 45..59 run scoreboard players set #sb bhc.data.temp 11

execute if score #seconds uhc.data.temp matches 00..14 run scoreboard objectives setdisplay sidebar bhc.bingo.score
execute if score #seconds uhc.data.temp matches 15..29 run scoreboard objectives setdisplay sidebar bhc.death.score
execute if score #seconds uhc.data.temp matches 30..44 run scoreboard objectives setdisplay sidebar bhc.bingo.score
execute if score #seconds uhc.data.temp matches 45..59 run scoreboard objectives setdisplay sidebar bhc.death.score

execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/timer/scoreboard/marker_name
