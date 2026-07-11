
#> uhc:pause
#
# @within			
#
#
# @description		Mettre le jeu en pause, commande manuelle
#

execute unless score #game_progress uhc.game_progress matches 1.. run return fail

scoreboard players add #pause uhc.data.temp 1
execute if score #pause uhc.data.temp matches 1 run function uhc:translation/pause
execute if score #pause uhc.data.temp matches 2 run scoreboard players set #pause uhc.data.temp 0

execute if score #pause uhc.data.temp matches 0 unless score #perma_night uhc.scenario matches 1 unless score #perma_day uhc.scenario matches 1 in minecraft:overworld run gamerule minecraft:advance_time true
execute if score #pause uhc.data.temp matches 1 in minecraft:overworld run gamerule minecraft:advance_time false
