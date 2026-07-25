
#> bhc:in_game/timer/scoreboard/after_end_game
#
# @within			bhc:in_game/timer/second
#
#
# @description		Changement de scoreboard
#

execute if score #seconds uhc.game_progress matches 30 run scoreboard players add #sb bhc.data.temp 1
execute unless score #seconds uhc.game_progress matches 30 run return fail
scoreboard players remove #seconds uhc.game_progress 8
execute if score #sb bhc.data.temp matches 13.. run scoreboard players set #seconds uhc.game_progress 0
execute if score #sb bhc.data.temp matches 13.. run scoreboard players set #sb bhc.data.temp 0

execute if score #sb bhc.data.temp matches 04 if score #bhc bhc.scenario matches 91 run scoreboard players set #sb bhc.data.temp 02
execute if score #sb bhc.data.temp matches 04 if score #bhc bhc.scenario matches 99 run scoreboard players set #sb bhc.data.temp 07
execute if score #sb bhc.data.temp matches 07 if score #bhc bhc.scenario matches 91..98 run scoreboard players set #sb bhc.data.temp 10

execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/timer/scoreboard/marker_name

execute unless score #sb bhc.data.temp matches 01.. run return run scoreboard objectives setdisplay sidebar bhc.total.score

execute if score #sb bhc.data.temp matches 01 run return run scoreboard objectives setdisplay sidebar bhc.stepa.rank.score
execute if score #sb bhc.data.temp matches 02 run return run scoreboard objectives setdisplay sidebar bhc.stepa.score
execute if score #sb bhc.data.temp matches 03 run return run scoreboard objectives setdisplay sidebar bhc.stepa.score.personal

execute if score #sb bhc.data.temp matches 04 run return run scoreboard objectives setdisplay sidebar bhc.stepb.rank.score
execute if score #sb bhc.data.temp matches 05 run return run scoreboard objectives setdisplay sidebar bhc.stepb.score
execute if score #sb bhc.data.temp matches 06 run return run scoreboard objectives setdisplay sidebar bhc.stepb.score.personal

execute if score #sb bhc.data.temp matches 07 run return run scoreboard objectives setdisplay sidebar bhc.kills.rank.score
execute if score #sb bhc.data.temp matches 08 run return run scoreboard objectives setdisplay sidebar bhc.kills.score
execute if score #sb bhc.data.temp matches 09 run return run scoreboard objectives setdisplay sidebar uhc.player.kills

execute if score #sb bhc.data.temp matches 10 run return run scoreboard objectives setdisplay sidebar bhc.death.rank.score
execute if score #sb bhc.data.temp matches 11 run return run scoreboard objectives setdisplay sidebar bhc.death.score
execute if score #sb bhc.data.temp matches 12 run return run scoreboard objectives setdisplay sidebar bhc.ironman.timer

