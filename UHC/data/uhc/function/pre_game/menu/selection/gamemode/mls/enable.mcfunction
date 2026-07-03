
#> uhc:pre_game/menu/selection/gamemode/mls/enable
#
# @within			uhc:pre_game/menu/selection/gamemode/main
#
#
# @description		Activation/Désactivation Moles
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 1
scoreboard players add #mls mls.scenario 1
execute if score #mls mls.scenario matches 2 run scoreboard players remove #mls mls.scenario 2
scoreboard players set #nzl uhc.gamemode 0

execute unless score #text mls.scenario = #mls mls.scenario run function uhc:translation/menu/selected/gamemode_text_main
execute unless score #text mls.scenario = #mls mls.scenario run function uhc:translation/menu/selected/gamemode_enabled
execute unless score #text mls.scenario = #mls mls.scenario run scoreboard players add #custom_arrow uhc.data.setup 1
scoreboard players operation #text mls.scenario = #mls mls.scenario

function uhc:pre_game/menu/load/gamemode/mls/main

## Préparation Config pre-game
scoreboard players set #pve uhc.data.setup 2
scoreboard players set #pvp uhc.data.setup 30
scoreboard players set #shrink_1_time_left uhc.data.setup 90
scoreboard players set #shrink_2_time_left uhc.data.setup 120
scoreboard players set #shrink_3_time_left uhc.data.setup 130
scoreboard players set #shrink_1_length uhc.data.setup 20
scoreboard players set #shrink_2_length uhc.data.setup 5
scoreboard players set #shrink_3_length uhc.data.setup 5
scoreboard players set #shrink_1_size_start uhc.data.setup 1500
scoreboard players set #shrink_1_size_end uhc.data.setup 200
scoreboard players set #shrink_2_size_end uhc.data.setup 64
scoreboard players set #shrink_3_size_end uhc.data.setup 32
scoreboard players set #map_height_timer uhc.data.setup 105

## Vies
scoreboard players set #lives uhc.data.setup 2
scoreboard players set #3_lives_left uhc.data.setup 0
scoreboard players set #2_lives_left uhc.data.setup 0
scoreboard players set #1_life_left uhc.data.setup 30
