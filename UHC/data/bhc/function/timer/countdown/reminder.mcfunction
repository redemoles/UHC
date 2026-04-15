
#> bhc:timer/countdown/reminder
#
# @within			bhc:timer/second
#
#
# @description		Rappel des règles du second scénario à l'approche de son lancement
#

execute if score #bhc bhc.scenario matches 01 run function bhc:scenario/01/timer/reminder
execute if score #bhc bhc.scenario matches 02 run function bhc:scenario/02/timer/reminder
