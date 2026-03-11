
#> uhc:in_game/timer/hotbar/cooldown/event_list/bhc/scenario/run/main
#
# @within			uhc:in_game/timer/hotbar/cooldown/event_list/main
#
#
# @description		Alerte décompte 
#

execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5

# Divers
execute if score #pve uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/pve
execute if score #pvp uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/pvp
execute if score #shrink_1_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/scenario/run/shrink
execute if score #shrink_2_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/shrink
execute if score #shrink_3_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/shrink

# Title
execute if score #min_cooldown_temp uhc.data.temp matches 0 run scoreboard players set #min_cooldown_temp uhc.data.temp -1
execute if score #min_cooldown_temp uhc.data.temp matches 1.. unless score #sec_cooldown uhc.data.temp matches 0 run scoreboard players remove #min_cooldown_temp uhc.data.temp 1
function uhc:in_game/timer/hotbar/cooldown/text_title with storage uhc:temp hotbar
