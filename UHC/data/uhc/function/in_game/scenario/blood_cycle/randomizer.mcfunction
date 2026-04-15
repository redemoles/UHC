
#> uhc:in_game/scenario/blood_cycle/randomizer
#
# @within			uhc:in_game/timer/minute/mains
#
#
# @description		
#

scoreboard players remove #minutes uhc.scenario.blood_cycle 10

# Nouveau cycle
execute store result score #random uhc.scenario.blood_cycle run random value 1..6

function uhc:translation/in_game/scenario/blood_cycle_randomizer
