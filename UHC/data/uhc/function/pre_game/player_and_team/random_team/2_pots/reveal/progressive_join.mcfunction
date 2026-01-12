
#> uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive_join
#
# @within			uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive
#
#
# @description		Génération d'équipes aléatoires
#

scoreboard players remove #random_team_player uhc.data.setup 1
execute unless score #random_team_player uhc.data.setup matches 0 run scoreboard players set #random_team_tick uhc.data.setup 5

execute if score @s uhc.id.team matches ..100 run return run function uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive_join_01_32
execute if score @s uhc.id.team matches 101.. run return run function uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive_join_101_132

