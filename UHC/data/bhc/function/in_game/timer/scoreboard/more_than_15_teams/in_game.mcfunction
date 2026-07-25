
#> bhc:in_game/timer/scoreboard/more_than_15_teams/in_game
#
# @within			bhc:in_game/timer/second
#
#
# @description		Scoreboard si plus de 15 équipes en jeu
#

execute unless score #stepa_end bhc.data.temp matches ..0 run function bhc:in_game/timer/scoreboard/more_than_15_teams/period/stepa
execute if score #stepa_end bhc.data.temp matches ..0 unless score #stepb_start bhc.data.temp matches ..0 run function bhc:in_game/timer/scoreboard/more_than_15_teams/period/pause
execute if score #stepb_start bhc.data.temp matches ..0 unless score #stepb_end bhc.data.temp matches ..0 run function bhc:in_game/timer/scoreboard/more_than_15_teams/period/stepb
execute if score #stepb_end bhc.data.temp matches ..0 run function bhc:in_game/timer/scoreboard/more_than_15_teams/period/late_game
