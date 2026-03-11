
#> uhc:in_game/timer/hotbar/cooldown/event_list/bhc/event
#
# @within			uhc:in_game/timer/hotbar/cooldown/event_list/main
#
#
# @description		Alerte décompte 
#

execute if score #stepa_start bhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_a/event_start
execute if score #stepa_end bhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_a/event_end

execute if score #bhc bhc.scenario matches 00 run return run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_b/00/event
execute if score #bhc bhc.scenario matches 01 run return run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_b/01/event
execute if score #bhc bhc.scenario matches 02 run return run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_b/02/event
execute if score #bhc bhc.scenario matches 91 run return run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_b/00/event
