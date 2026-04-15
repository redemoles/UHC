
#> lobby:mini_games/tc/mini_games/ctb/finished
#
# @within			lobby:mini_games/tc/timer/playing
#
#
# @description		Fonction lancé pour un joueur ayant fini le mini-jeu en cours
#

execute if score #team_01 lobby.tc.player.score >= #team_02 lobby.tc.player.score as @a[tag=mgs.tc.team.01] run tag @s add mgs.tc.finished
execute if score #team_02 lobby.tc.player.score >= #team_01 lobby.tc.player.score as @a[tag=mgs.tc.team.02] run tag @s add mgs.tc.finished
scoreboard players add @a[tag=mgs.tc.finished] lobby.tc.player.score 1

function uhc:translation/lobby/tc_ctb_finished

scoreboard players operation #temp_record_score_01 lobby.tc.data = #team_01 lobby.tc.player.score
scoreboard players operation #temp_record_score_02 lobby.tc.data = #team_02 lobby.tc.player.score

scoreboard players operation #temp_record_diff_01 lobby.tc.data = #team_01 lobby.tc.player.score
scoreboard players operation #temp_record_diff_01 lobby.tc.data -= #team_02 lobby.tc.player.score
scoreboard players operation #temp_record_diff_02 lobby.tc.data = #team_02 lobby.tc.player.score
scoreboard players operation #temp_record_diff_02 lobby.tc.data -= #team_01 lobby.tc.player.score

execute as @a[tag=mgs.tc.team.01] run function lobby:mini_games/tc/mini_games/ctb/record/maximum/main
execute as @a[tag=mgs.tc.team.02] run function lobby:mini_games/tc/mini_games/ctb/record/maximum/main

execute as @a[tag=mgs.tc.team.01] run function lobby:mini_games/tc/mini_games/ctb/record/difference/main
execute as @a[tag=mgs.tc.team.02] run function lobby:mini_games/tc/mini_games/ctb/record/difference/main

scoreboard players set #ctb_x2_team_02 lobby.tc.data 0
scoreboard players set #ctb_x2_team_02 lobby.tc.data 0
