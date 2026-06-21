
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/03
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC III
#

scoreboard players set #vanilla uhc.gamemode 0


scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true,"italic":false},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"BHC III","color":"#FFE73F","bold":true}]
execute unless score #bhc uhc.gamemode matches 1 run function uhc:translation/menu/selected/gamemode_bhc_enabled
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 3

scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 30
scoreboard players set #stepb_start bhc.data.setup 40
scoreboard players set #stepb_end bhc.data.setup 60

function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/03

scoreboard players set #check_bingo_generated uhc.data.temp 1
execute store result score #check_bingo_generated uhc.data.temp run function bingo_generator:load
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:translation/menu/selected/gamemode_bhc_no_bingo_generated
