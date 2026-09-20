
#> uhc:in_game/player/misc/score_display/sidebar
#
# @within			
#
#
# @description		
#

## Vanilla
execute if score #pvp uhc.data.temp matches ..0 run scoreboard objectives setdisplay sidebar uhc.player.kills

## Bingo UHC
execute if score #bhc uhc.gamemode matches 1 if score #stepa_enabled bhc.data matches 1 run scoreboard objectives setdisplay sidebar bhc.stepa.score
execute if score #bhc uhc.gamemode matches 1 if score #stepb_enabled bhc.data matches 2 run scoreboard objectives setdisplay sidebar bhc.stepb.score

execute if score #bhc uhc.gamemode matches 1 unless score #team/2 bhc.data matches 8.. if score #stepa_end bhc.data.temp matches ..-1 if score #stepb_end bhc.data.temp matches 1.. run return run function bhc:summary/bingos/score
execute if score #bhc uhc.gamemode matches 1 unless score #team/2 bhc.data matches 8.. unless score #game_progress uhc.game_progress matches 2.. if score #stepb_end bhc.data.temp matches ..-1 run function bhc:in_game/timer/scoreboard/less_than_15_teams/
execute if score #bhc uhc.gamemode matches 1 if score #team/2 bhc.data matches 8.. unless score #game_progress uhc.game_progress matches 2.. run function bhc:in_game/timer/scoreboard/more_than_15_teams/in_game
