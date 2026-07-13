
#> uhc:in_game/player/test
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu
#

scoreboard players set #tick uhc.data.temp 19
execute in minecraft:overworld run gamerule minecraft:send_command_feedback true
execute in minecraft:the_nether run gamerule minecraft:send_command_feedback true
execute in minecraft:the_end run gamerule minecraft:send_command_feedback true
