
#> bhc:timer/minute
#
# @within			uhc:in_game/timer/minute/main
#
#
# @description		Fonction par minute
#

scoreboard players add #minutes bhc.data.temp 1
scoreboard players remove #stepa_start bhc.data.temp 1
scoreboard players remove #stepa_end bhc.data.temp 1
scoreboard players remove #stepb_start bhc.data.temp 1
scoreboard players remove #stepb_end bhc.data.temp 1
execute if score #bhc bhc.scenario matches 01 run scoreboard players remove #stepb_exhaustion bhc.data.temp 1

execute if score #bhc bhc.scenario matches 00 run function bhc:scenario/00/timer/steps
execute if score #bhc bhc.scenario matches 01 run function bhc:scenario/01/timer/steps
execute if score #bhc bhc.scenario matches 02 run function bhc:scenario/02/timer/steps
execute if score #bhc bhc.scenario matches 51 run function bhc:scenario/51/timer/steps
execute if score #bhc bhc.scenario matches 91 run function bhc:scenario/91/timer/steps
execute if score #bhc bhc.scenario matches 92 run function bhc:scenario/92/timer/steps
execute if score #bhc bhc.scenario matches 99 run function bhc:scenario/99/timer/steps
execute if score #minutes uhc.data.temp matches 0 run scoreboard players operation #tick bhc.data.temp = #tick uhc.data.temp
execute if score #minutes uhc.data.temp matches 0 run scoreboard players operation #minutes bhc.data.temp = #minutes uhc.data.temp
execute unless score #game_progress uhc.game_progress matches 2.. run function bhc:scores_calculator/death/update
