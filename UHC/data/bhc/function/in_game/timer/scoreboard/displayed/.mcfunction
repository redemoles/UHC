
#> bhc:in_game/timer/scoreboard/displayed/
#
# @within			bhc:in_game/timer/scoreboard/marker_name
#
#
# @description		Mise à jour du scoreboard
#

execute unless score #sb bhc.data.temp matches 01.. run return run function bhc:in_game/timer/scoreboard/displayed/total
execute if score #sb bhc.data.temp matches 01..02 run return run function bhc:in_game/timer/scoreboard/displayed/stepa
execute if score #sb bhc.data.temp matches 04..05 run return run function bhc:in_game/timer/scoreboard/displayed/stepb
execute if score #sb bhc.data.temp matches 07..08 run return run function bhc:in_game/timer/scoreboard/displayed/kills
execute if score #sb bhc.data.temp matches 10..11 run return run function bhc:in_game/timer/scoreboard/displayed/death
execute if score #sb bhc.data.temp matches 12 run return run function bhc:in_game/timer/scoreboard/displayed/ironman
execute if score #sb bhc.data.temp matches 13 run return run function bhc:in_game/timer/scoreboard/displayed/bingos
execute if score #sb bhc.data.temp matches 14 run return run function bhc:in_game/timer/scoreboard/displayed/damage_dealt
