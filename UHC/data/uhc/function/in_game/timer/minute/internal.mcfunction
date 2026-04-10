
#> uhc:in_game/timer/minute/internal
#
# @within			uhc:in_game/timer/minute/main
#
#
# @description		Fonction minute pour timer interne
#

scoreboard players remove #pve uhc.data.temp 1
scoreboard players remove #pvp uhc.data.temp 1
scoreboard players remove #shrink_1_time_left uhc.data.temp 1
scoreboard players remove #shrink_2_time_left uhc.data.temp 1
scoreboard players remove #shrink_3_time_left uhc.data.temp 1
scoreboard players remove #shrink_1_timer_end uhc.data.temp 1
scoreboard players remove #shrink_2_timer_end uhc.data.temp 1
scoreboard players remove #shrink_3_timer_end uhc.data.temp 1
scoreboard players remove #3_lives_left uhc.data.temp 1
scoreboard players remove #2_lives_left uhc.data.temp 1
scoreboard players remove #1_life_left uhc.data.temp 1
scoreboard players remove #map_height_timer uhc.data.temp 1
execute if score #go_to_hell uhc.scenario matches 1 run scoreboard players remove #go_to_hell uhc.data.temp 1
execute if score #sky_high uhc.scenario matches 1 run scoreboard players remove #sky_high uhc.data.temp 1
