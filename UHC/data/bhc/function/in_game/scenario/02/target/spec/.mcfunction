
#> bhc:in_game/scenario/02/target/spec/
#
# @within			bhc:in_game/scores_calculator/kills/player_dead
#
#
# @description		Liste des cibles 
#

execute as @a[scores={bhc.target.list=1..}] run tag @s add uhc.temp
scoreboard players reset @a[tag=uhc.spec] bhc.target.list
execute in uhc:lobby run function bhc:in_game/scenario/02/target/spec/list
