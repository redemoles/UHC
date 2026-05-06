
#> uhc:in_game/scenario/silent_night/biome_paranoia/root
#
# @within			uhc:in_game/scenario/silent_night/tick
#
#
# @description		Silent Night
#

execute store result storage uhc:biome_paranoia biome_paranoia.team int 1 run scoreboard players get @s uhc.scenario.biome_paranoia.team
execute if score @s uhc.scenario.biome_paranoia.team matches 0..9 run function uhc:in_game/scenario/biome_paranoia/by_nickname_0 with storage uhc:biome_paranoia biome_paranoia
function uhc:in_game/scenario/silent_night/biome_paranoia/macro with storage uhc:biome_paranoia biome_paranoia
