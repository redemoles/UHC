
#> uhc:in_game/timer/hotbar/cooldown/priority_check/uhc
#
# @within			uhc:in_game/timer/hotbar/cooldown/main
#
#
# @description		Test de priorité 
#

execute if score #min_cooldown_temp uhc.data.temp matches 0 if score #sec_cooldown uhc.data.temp matches 1..50 run return fail

scoreboard players set #lives_before_alert uhc.data.temp 0
execute if score #1_life_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_before_alert uhc.data.temp 2
execute if score #2_lives_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_before_alert uhc.data.temp 3
execute if score #3_lives_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_before_alert uhc.data.temp 4
scoreboard players set #lives_after_alert uhc.data.temp 0
execute if score #3_lives_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_after_alert uhc.data.temp 3
execute if score #2_lives_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_after_alert uhc.data.temp 2
execute if score #1_life_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players set #lives_after_alert uhc.data.temp 1
execute if score #lives_after_alert uhc.data.temp matches 1.. run scoreboard players add #min_cooldown_alert uhc.data.temp 1

execute if score #pve uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #pvp uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_1_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_2_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #shrink_3_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #go_to_hell uhc.scenario matches 1 if score #go_to_hell uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
execute if score #sky_high uhc.scenario matches 1 if score #sky_high uhc.data.temp = #min_cooldown_temp uhc.data.temp run scoreboard players add #min_cooldown_alert uhc.data.temp 1
