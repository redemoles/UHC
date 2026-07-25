
#> bhc:in_game/scenario/02/target/death/killer/new_adv/line_1
#
# @within			bhc:in_game/scenario/02/target/death/killer/new_adv/line
#
#
# @description		Nouvelle case pour l'assassin 
#

# Ligne aléatoire
$execute store result score #temp_random bhc.data run random value 1..$(enabled)
scoreboard players remove #temp_random bhc.data 1

data modify storage bhc:temp new_adv.line.random set value 0
execute store result storage bhc:temp new_adv.line.random int 1 run scoreboard players get #temp_random bhc.data

function bhc:in_game/scenario/02/target/death/killer/new_adv/line_2 with storage bhc:temp new_adv.line
