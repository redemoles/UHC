
#> uhc:pre_game/player_and_team/in_void
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Téléportation d'un joueur tombé du lobby
#

execute store result score #temp lobby.data.in_void run random value 1..100
execute store result score #temp_rotation lobby.data.in_void run random value 1..4

## Lieu de téléportation
# Lobby
execute if score #temp lobby.data.in_void matches 001..060 run return run tp @s 0 65 0 0 0

# Backroom
execute if score #temp lobby.data.in_void matches 061..100 run function lobby:mini_games/br/start
execute if score #temp lobby.data.in_void matches 061..100 if score #temp_rotation lobby.data.in_void matches 1 run tp @s 0 65 -640 0 0
execute if score #temp lobby.data.in_void matches 061..100 if score #temp_rotation lobby.data.in_void matches 2 run tp @s 0 65 -640 90 0
execute if score #temp lobby.data.in_void matches 061..100 if score #temp_rotation lobby.data.in_void matches 3 run tp @s 0 65 -640 180 0
execute if score #temp lobby.data.in_void matches 061..100 if score #temp_rotation lobby.data.in_void matches 4 run tp @s 0 65 -640 -90 0
