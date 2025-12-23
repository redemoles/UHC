
#> uhc:in_game/timer/hotbar/cooldown/priority_check/uhc
#
# @within			uhc:in_game/timer/hotbar/cooldown/
#
#
# @description		Test de priorité 
#

execute if score #min_cooldown_temp uhc.data.temp matches 0 if score #sec_cooldown uhc.data.temp matches 1..50 run return fail
execute if score #pve uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #pvp uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_1_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_2_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_3_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
