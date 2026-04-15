
#> uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
# @within			uhc:in_game/timer/minute/main
#
#
# @description		Annonce décompte
#

execute if score #minutes uhc.data.temp matches 0 run tellraw @a [{"text":""}]

execute if score #bhc uhc.gamemode matches 1 run function bhc:timer/countdown/text_tellraw
execute if score #go_to_hell uhc.scenario matches 1 if score #go_to_hell uhc.data.temp matches 0..10 run function uhc:translation/hotbar/scenario_go_to_hell
execute if score #sky_high uhc.scenario matches 1 if score #sky_high uhc.data.temp matches 0..10 run function uhc:translation/hotbar/scenario_sky_high

execute if score #pve uhc.data.temp matches 0..10 run function uhc:translation/hotbar/uhc_countdown_pve
execute if score #pvp uhc.data.temp matches 0..10 run function uhc:translation/hotbar/uhc_countdown_pvp

execute if score #bhc bhc.scenario matches 99 if score #shrink_1_time_left uhc.data.temp matches 0..5 run function bhc:timer/countdown/bhc_run
execute unless score #bhc bhc.scenario matches 99 if score #shrink_1_time_left uhc.data.temp matches 0..10 run function uhc:translation/hotbar/uhc_countdown_shrink_1 with storage uhc:temp
execute if score #shrink_2_time_left uhc.data.temp matches 0..5 run function uhc:translation/hotbar/uhc_countdown_shrink_2 with storage uhc:temp
execute if score #shrink_3_time_left uhc.data.temp matches 0..5 run function uhc:translation/hotbar/uhc_countdown_shrink_3 with storage uhc:temp
