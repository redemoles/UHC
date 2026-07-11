
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/02
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC II - Ère Viking
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 2
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario -1
scoreboard players set #nzl uhc.gamemode 0

execute unless score #text bhc.scenario = #bhc bhc.scenario run function uhc:translation/menu/selected/gamemode_text_main
execute unless score #text bhc.scenario = #bhc bhc.scenario run function uhc:translation/menu/selected/gamemode_enabled with storage uhc:settings gamemode
scoreboard players operation #text bhc.scenario = #bhc bhc.scenario

scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 30
scoreboard players set #stepb_start bhc.data.setup 45
scoreboard players set #stepb_end bhc.data.setup 105

scoreboard players set #check_bingo_generated uhc.data.temp 1
execute store result score #check_bingo_generated uhc.data.temp run function bingo_generator:load
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:translation/menu/selected/gamemode_bhc_no_bingo_generated
