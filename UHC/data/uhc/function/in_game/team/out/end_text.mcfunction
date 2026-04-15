
#> uhc:in_game/team/out/end_text
#
# @within			uhc:in_game/team/out/player_log_out
#
#
# @description		Envoie une proposition à l'host de mettre fin à la partie
#

scoreboard players enable @s uhc.game_progress
execute unless score #game_progress uhc.game_progress matches 2.. run function uhc:translation/in_game/team_out_end_text
