
#> lobby:mini_games/tc/mini_games/parkour/finished
#
# @within			lobby:mini_games/tc/timer/playing
#
#
# @description		Fonction lancé pour un joueur ayant fini le mini-jeu en cours
#

scoreboard players add @s lobby.tc.player.score 1
tag @s add mgs.tc.finished
execute if score #timer_game lobby.tc.data matches 41.. as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run function uhc:translation/lobby/tc_40s_left
execute if score #timer_game lobby.tc.data matches 41.. run scoreboard players set #timer_game_tick lobby.tc.data 0
execute if score #timer_game lobby.tc.data matches 41.. run scoreboard players set #timer_game_min lobby.tc.data 0
execute if score #timer_game lobby.tc.data matches 41.. run scoreboard players set #timer_game_sec lobby.tc.data 40
execute if score #timer_game lobby.tc.data matches 41.. run scoreboard players set #timer_game lobby.tc.data 40

execute if score #random_parkour_pick lobby.tc.data matches 1 run function lobby:mini_games/tc/mini_games/parkour/record/classic_01/main
execute if score #random_parkour_pick lobby.tc.data matches 2 run function lobby:mini_games/tc/mini_games/parkour/record/honey_01/main
execute if score #random_parkour_pick lobby.tc.data matches 3 run function lobby:mini_games/tc/mini_games/parkour/record/piston_slime_01/main
execute if score #random_parkour_pick lobby.tc.data matches 4 run function lobby:mini_games/tc/mini_games/parkour/record/chains/main
