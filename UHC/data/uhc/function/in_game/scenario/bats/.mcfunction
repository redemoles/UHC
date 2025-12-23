
#> uhc:in_game/scenario/bats/
#
# @within			uhc:in_game/scenario/_advancement/player_kill_bat
#
#
# @description		Probabilité Bats
#

execute store result score #roll uhc.scenario.bats run random value 1..20

execute if score #roll uhc.scenario.bats matches 1 run kill @s
execute if score #roll uhc.scenario.bats matches 2..20 run give @s golden_apple
