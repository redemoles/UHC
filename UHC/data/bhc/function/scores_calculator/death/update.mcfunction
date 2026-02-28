
#> bhc:scores_calculator/death/update
#
# @within			uhc:in_game/player/death/main
# @within			bhc:scores_calculator/endgame/detect
#
# @description		Actualisation scores death 
#

# Préparation Départage Score Survie
execute if score #bhc bhc.scenario matches 91 if score #game_progress uhc.game_progress matches 2 run function bhc:scores_calculator/death/tie_break/chill_mode/
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/tie_break/score
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/tie_break/rank

# Score Survie
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/score
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/death/rank

# Score Kills
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/kills/rank
