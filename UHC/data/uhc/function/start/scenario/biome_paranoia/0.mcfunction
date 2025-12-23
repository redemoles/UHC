
#> uhc:start/scenario/biome_paranoia/0
#
# @within			uhc:start/setup_players
#
#
# @description		Randomiseur de la liste des joueurs dans le tab
#

tag @s add uhc.scenario.biome_paranoia.team
scoreboard players add #random uhc.scenario.biome_paranoia.team 1
scoreboard players operation @s uhc.scenario.biome_paranoia.team = #random uhc.scenario.biome_paranoia.team
execute store result storage uhc:biome_paranoia biome_paranoia.team int 1 run scoreboard players get #random uhc.scenario.biome_paranoia.team
execute if score #random uhc.scenario.biome_paranoia.team matches 0..9 run function uhc:in_game/scenario/biome_paranoia/by_nickname_0 with storage uhc:biome_paranoia biome_paranoia
function uhc:start/scenario/biome_paranoia/1 with storage uhc:biome_paranoia biome_paranoia
