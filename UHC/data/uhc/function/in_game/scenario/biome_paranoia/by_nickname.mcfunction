
#> uhc:in_game/scenario/biome_paranoia/by_nickname
#
# @within			uhc:in_game/player/tick
#
#
# @description		Biome paranoia - Tri par équipe
#

execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 2.. run return fail
execute store result storage uhc:biome_paranoia biome_paranoia.team int 1 run scoreboard players get @s uhc.scenario.biome_paranoia.team
execute if score @s uhc.scenario.biome_paranoia.team matches 0..9 run function uhc:in_game/scenario/biome_paranoia/by_nickname_0 with storage uhc:biome_paranoia biome_paranoia
function uhc:in_game/scenario/biome_paranoia/by_nickname_1 with storage uhc:biome_paranoia biome_paranoia
