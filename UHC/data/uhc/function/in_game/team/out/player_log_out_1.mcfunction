
#> uhc:in_game/team/out/player_log_out_1
#
# @within			uhc:in_game/team/out/player_log_out
#
#
# @description		Vérifie s'il reste une seule équipe avec des joueurs connectés
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if entity @a[tag=uhc.player,predicate=uhc:id/team] run scoreboard players add #temp uhc.data.temp 1
