
#> bhc:in_game/timer/countdown/reminder
#
# @within			bhc:in_game/timer/second
#
#
# @description		Rappel des règles du second scénario à l'approche de son lancement
#

execute if score #bhc bhc.scenario matches 01 run function bhc:in_game/scenario/01/timer/reminder
execute if score #bhc bhc.scenario matches 02 run function bhc:in_game/scenario/02/timer/reminder
